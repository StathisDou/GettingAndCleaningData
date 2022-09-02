The tidydata that are created by the run_analysis.R script are extracted by the following process

Run_analysis.R
It contains two functions, the one is the run_analysis function which when called, runs the second function (whose purpose
is to download the compressed file from the following Url 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it to it's pre-cast folders.

After the files are downloaded and unzipped the function merges our files based on our pre-given measurement of mean and
standard deviation. The files being merged are 
train & test (subjects, features, measurements)
/UCI HAR Dataset/train/y_train.txt & /UCI HAR Dataset/test/y_test.txt
/UCI HAR Dataset/train/subject_train.txt & /UCI HAR Dataset/test/subject_test.txt
/UCI HAR Dataset/train/X_train.txt & /UCI HAR Dataset/test/X_test.txt
The binding is done by subsetting our data for mean and standard deviation

The indices of activities are changed to descriptive corresponding to labels given by the activity file 
/UCI HAR Dataset/activity_labels.txt"

The labels are appropriated with descriptive names using a 'find and replace' table which we loop through

And in order to create tidy data we aggregate the means of our table by activity and subject, which we save
to tidydata.txt file (attached to this repository)

Explanatory step by step

#Load features names
      set_features<-read.table("./UCI HAR Dataset/features.txt")
#we load and merge our sets, our labels and our activities in 3 separate data sets (binding rows)
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
      merge_sets <- rbind(read.table("UCI HAR Dataset/train             /X_train.txt",col.names=t(set_features[2])),read.table("./UCI        HAR Dataset/test     /X_test.txt",col.names=t(set_features[2])))
#We get the values of mean and standard deviation (indices and values)
      features_id <- grep("mean\\(|std\\(", set_features[, 2])
#features_id is for the indices
      features_values <- grep("mean\\(|std\\(", set_features[, 2], value=TRUE)
#features_values is for the corresponding values to indices
      merge_sets <-merge_sets[,features_id]
      
#merging activity tables rows
      merge_activity <- rbind(read.table("UCI HAR Dataset/train/y_train.txt",col.names=c("activity")),read.table("./UCI HAR Dataset/test/y_test.txt",col.names=c("activity")))
#merging subject tables rows
      merge_subject <- rbind(read.table("UCI HAR Dataset/train/subject_train.txt",col.names=c("subject")),read.table("./UCI HAR Dataset/test/subject_test.txt",col.names=c("subject")))
#1. Merges the training and the test sets to create one data set. (into a big data set (binding columns))
      merge_all<-cbind(merge_subject,merge_activity,merge_sets)
  
#3. Uses descriptive activity names to name the activities in the data set
#Till now in our data set we have activities with a corresponding id, so we load the id values from activities file
      set_activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
#Now we need to change id to corresponding value to our merged data set "activity" columns
#We use factor for activity column based on our activity set 2nd column
      merge_all$activity = factor(merge_all$activity,labels=set_activities$V2)

#4. Appropriately labels the data set with descriptive variable names. 
#In order to change labels we'll create a data table with values we want to replace
#first column what to search, second column what to replace it with, and we search the features info
#file with our colnames to find the appropriate labels (dots x3,x2,x1 change to -)
      text_to_find <- c("Acc","Gyro", "BodyBody", "^t", "^f","\\.\\.\\.","\\.\\.","\\.")
      text_to_replace<- c("Accelerometer", "Gyroscope", "Body", "Time", "Frequency","-","-","-")
      fromto<-data.table(text_to_find,text_to_replace)
#we use a loop to change values from column 1 to column 2
      for (i in 1:8){
        colnames(merge_all)<-gsub(fromto[i,1], fromto[i,2], colnames(merge_all))
      }
      
#5. From the data set in step 4, creates a second, independent tidy data set with the average of
#each variable for each activity and each subject
#We use aggregate to parse all cols and get mean by subject and activity
      tidydata <- aggregate(. ~activity + subject, merge_all, mean)
#we use plyr's arrange first by subject then by activity
      arrange(tidydata, subject,activity)
#lastly we write our tidydata to a text file
      write.table(tidydata, file = "tidydata.txt", row.names = TRUE)

tidydata contains the averages of selected features from the original 'Human Activity Recognition Using Smartphones Dataset Version 1.0'.

Average variables (names on the tidy data set)
Where time and frequency is the given indication, and the three-dimensional signals
body acceleration, gravity acceleration, body gyroscope
                jerk, magnitude, velocity

[1] "activity"                                "subject"                                
 [3] "TimeBodyAccelerometer-mean-X"            "TimeBodyAccelerometer-mean-Y"           
 [5] "TimeBodyAccelerometer-mean-Z"            "TimeBodyAccelerometer-std-X"            
 [7] "TimeBodyAccelerometer-std-Y"             "TimeBodyAccelerometer-std-Z"            
 [9] "TimeGravityAccelerometer-mean-X"         "TimeGravityAccelerometer-mean-Y"        
[11] "TimeGravityAccelerometer-mean-Z"         "TimeGravityAccelerometer-std-X"         
[13] "TimeGravityAccelerometer-std-Y"          "TimeGravityAccelerometer-std-Z"         
[15] "TimeBodyAccelerometerJerk-mean-X"        "TimeBodyAccelerometerJerk-mean-Y"       
[17] "TimeBodyAccelerometerJerk-mean-Z"        "TimeBodyAccelerometerJerk-std-X"        
[19] "TimeBodyAccelerometerJerk-std-Y"         "TimeBodyAccelerometerJerk-std-Z"        
[21] "TimeBodyGyroscope-mean-X"                "TimeBodyGyroscope-mean-Y"               
[23] "TimeBodyGyroscope-mean-Z"                "TimeBodyGyroscope-std-X"                
[25] "TimeBodyGyroscope-std-Y"                 "TimeBodyGyroscope-std-Z"                
[27] "TimeBodyGyroscopeJerk-mean-X"            "TimeBodyGyroscopeJerk-mean-Y"           
[29] "TimeBodyGyroscopeJerk-mean-Z"            "TimeBodyGyroscopeJerk-std-X"            
[31] "TimeBodyGyroscopeJerk-std-Y"             "TimeBodyGyroscopeJerk-std-Z"            
[33] "TimeBodyAccelerometerMag-mean-"          "TimeBodyAccelerometerMag-std-"          
[35] "TimeGravityAccelerometerMag-mean-"       "TimeGravityAccelerometerMag-std-"       
[37] "TimeBodyAccelerometerJerkMag-mean-"      "TimeBodyAccelerometerJerkMag-std-"      
[39] "TimeBodyGyroscopeMag-mean-"              "TimeBodyGyroscopeMag-std-"              
[41] "TimeBodyGyroscopeJerkMag-mean-"          "TimeBodyGyroscopeJerkMag-std-"          
[43] "FrequencyBodyAccelerometer-mean-X"       "FrequencyBodyAccelerometer-mean-Y"      
[45] "FrequencyBodyAccelerometer-mean-Z"       "FrequencyBodyAccelerometer-std-X"       
[47] "FrequencyBodyAccelerometer-std-Y"        "FrequencyBodyAccelerometer-std-Z"       
[49] "FrequencyBodyAccelerometerJerk-mean-X"   "FrequencyBodyAccelerometerJerk-mean-Y"  
[51] "FrequencyBodyAccelerometerJerk-mean-Z"   "FrequencyBodyAccelerometerJerk-std-X"   
[53] "FrequencyBodyAccelerometerJerk-std-Y"    "FrequencyBodyAccelerometerJerk-std-Z"   
[55] "FrequencyBodyGyroscope-mean-X"           "FrequencyBodyGyroscope-mean-Y"          
[57] "FrequencyBodyGyroscope-mean-Z"           "FrequencyBodyGyroscope-std-X"           
[59] "FrequencyBodyGyroscope-std-Y"            "FrequencyBodyGyroscope-std-Z"           
[61] "FrequencyBodyAccelerometerMag-mean-"     "FrequencyBodyAccelerometerMag-std-"     
[63] "FrequencyBodyAccelerometerJerkMag-mean-" "FrequencyBodyAccelerometerJerkMag-std-" 
[65] "FrequencyBodyGyroscopeMag-mean-"         "FrequencyBodyGyroscopeMag-std-"         
[67] "FrequencyBodyGyroscopeJerkMag-mean-"     "FrequencyBodyGyroscopeJerkMag-std-"     


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
