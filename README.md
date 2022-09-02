# Getting And Cleaning Data

This repository was created for the peer-graded assignment of:
Getting And Cleaning Data, from Data Science Specialization, by Johns Hopkins University, on coursera

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

Getting and Cleaning Data Course Project

The data for the project are downloaded from the following URL : (by running the function run_analysis)

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The guidelines were to create an R script called run_analysis.R that does the following. 

    Merges the training and the test sets to create one data set.

    Extracts only the measurements on the mean and standard deviation for each measurement. 

    Uses descriptive activity names to name the activities in the data set

    Appropriately labels the data set with descriptive variable names. 

    From the data set in step 4, creates a second, independent tidy data set with the average 
    of each variable for each activity and each subject.

Repository files

README.md (Current file)

run_analysis.R (It is the R script of the repository)
It contains two functions, the one is the run_analysis function which when called runs the second function (whose purpose
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

CodeBook.md
The code book contains informations on the 'tidy_data' table, see below for content

    tidydata table information

    variable descriptions

    instructions to run the script

    collection process

    process to create tidydata

    licence

