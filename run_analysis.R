
#Getting and cleaning data - run_analysis script file

run_analysis<-function(){
  #get zip file through a second function and unzip it on our working directory
  retrieveandunzip("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","tmpfile.zip")
  
  library(plyr)
  library(data.table)
  
  #Load features names
  set_features<-read.table("./UCI HAR Dataset/features.txt")
  
  #we load and merge our sets, our labels and our activities in 3 separate data sets (binding rows)
  #2. Extracts only the measurements on the mean and standard deviation for each measurement.
  merge_sets <- rbind(read.table("UCI HAR Dataset/train/X_train.txt",col.names=t(set_features[2])),read.table("./UCI HAR Dataset/test/X_test.txt",col.names=t(set_features[2])))
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
  write.table(tidydata, file = "tidydata.txt", row.names = FALSE)

  #return our resulting tidydata
  return(tidydata)
}


retrieveandunzip<- function(url="NULL", dest="NULL") {
  download.file(url, dest)  #download file from url to dest (where dest is zip file)
  unzip(dest)               #unzip the dest (zip file)
}
