The tidydata that are created by the run_analysis.R script are extracted by the following process

Run_analysis.R
Contains the run_analysis function which downloads, unzips the data files, combines the files, subsets needed variables based on labels
that contain means and standard deviation. Uses activity label factors to change index columns, appropriates column names and lastly
aggregated averages based on activity and subject. Re-arranges data and saves to tidydata.txt file. (Step by step process on script and readme file)

tidydata contains the averages of selected features from the original 'Human Activity Recognition Using Smartphones Dataset Version 1.0'.

Average variables (names on the tidy data set)
Where time and frequency is the given indication, and the three-dimensional signals
body acceleration, gravity acceleration, body gyroscope
                jerk, magnitude, velocity


"activity" | factor | activity measured
"subject" | integer | number of subjects
"TimeBodyAccelerometer-mean-X" | numeric (f) | (-1,+1)
"TimeBodyAccelerometer-mean-Y" | numeric (f) | (-1,+1)
"TimeBodyAccelerometer-mean-Z" | numeric (f) | (-1,+1)
"TimeBodyAccelerometer-std-X" | numeric (f) | (-1,+1)
"TimeBodyAccelerometer-std-Y" | numeric (f) | (-1,+1)
"TimeBodyAccelerometer-std-Z" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-mean-X" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-mean-Y" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-mean-Z" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-std-X" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-std-Y" | numeric (f) | (-1,+1)
"TimeGravityAccelerometer-std-Z" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-mean-X" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-mean-Y" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-mean-Z" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-std-X" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-std-Y" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerk-std-Z" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-mean-X" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-mean-Y" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-mean-Z" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-std-X" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-std-Y" | numeric (f) | (-1,+1)
"TimeBodyGyroscope-std-Z" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-mean-X" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-mean-Y" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-mean-Z" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-std-X" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-std-Y" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerk-std-Z" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerMag-mean-" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerMag-std-" | numeric (f) | (-1,+1)
"TimeGravityAccelerometerMag-mean-" | numeric (f) | (-1,+1)
"TimeGravityAccelerometerMag-std-" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerkMag-mean-" | numeric (f) | (-1,+1)
"TimeBodyAccelerometerJerkMag-std-" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeMag-mean-" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeMag-std-" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerkMag-mean-" | numeric (f) | (-1,+1)
"TimeBodyGyroscopeJerkMag-std-" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometer-mean-X" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometer-mean-Y" | numeric (f) | (-1,+1)      
"FrequencyBodyAccelerometer-mean-Z" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometer-std-X" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometer-std-Y" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometer-std-Z" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-mean-X" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-mean-Y" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-mean-Z" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-std-X" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-std-Y" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerk-std-Z" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-mean-X" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-mean-Y" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-mean-Z" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-std-X" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-std-Y" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscope-std-Z" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerMag-mean-" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerMag-std-" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerkMag-mean-" | numeric (f) | (-1,+1)
"FrequencyBodyAccelerometerJerkMag-std-" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscopeMag-mean-" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscopeMag-std-" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscopeJerkMag-mean-" | numeric (f) | (-1,+1)
"FrequencyBodyGyroscopeJerkMag-std-" | numeric (f) | (-1,+1)

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
