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

tidydata contains the means of selected features from the original 'Human Activity Recognition Using Smartphones Dataset Version 1.0'.

Attempt | #1 | 
--- | --- | 
Seconds | 301 |
