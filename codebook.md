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
