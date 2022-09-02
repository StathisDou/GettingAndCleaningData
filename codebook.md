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
