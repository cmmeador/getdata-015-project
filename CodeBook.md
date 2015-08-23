---
title: "Code Book"
output: html_document
---

The purpose of this Code Book document is to define and describe the variables in the final product of this assignment, which is a summarized data set.  The data set begins with two categorical values identifying the subject of the experiment and the corresponding activity for each of the measured variables.  The rest of the data are averages (calculated with the `mean()` function) by subject and activity of the source data, which is described in greater detail in features_info.txt of the original data set.

Please see `README.md` and the code comments in `run_analysis.R` for details of how the data was transformed into the following product.


Column Name                   | Description of Variable
------------------------------|------------------------
`subject_id`                  | ID number of the subject observed
`activity_label`              | Label for the activity engaged at the time of observation
`tBodyAcc-mean()-X`           | Mean of linear body acceleration on x-axis (accelerometer)
`tBodyAcc-mean()-Y`           | Mean of linear body acceleration on y-axis (accelerometer)
`tBodyAcc-mean()-Z`           | Mean of linear body acceleration on z-axis (accelerometer)
`tBodyAcc-std()-X`            | Standard deviation of linear body acceleration on x-axis (accelerometer)
`tBodyAcc-std()-Y`            | Standard deviation of linear body acceleration on y-axis (accelerometer)
`tBodyAcc-std()-Z`            | Standard deviation of linear body acceleration on z-axis (accelerometer)
`tGravityAcc-mean()-X`        | Mean of linear gravity acceleration on x-axis (accelerometer)
`tGravityAcc-mean()-Y`        | Mean of linear gravity acceleration on y-axis (accelerometer)
`tGravityAcc-mean()-Z`        | Mean of linear gravity acceleration on z-axis (accelerometer)
`tGravityAcc-std()-X`         | Standard deviation of linear gravity acceleration on x-axis (accelerometer)
`tGravityAcc-std()-Y`         | Standard deviation of linear gravity acceleration on y-axis (accelerometer)
`tGravityAcc-std()-Z`         | Standard deviation of linear gravity acceleration on z-axis (accelerometer)
`tBodyAccJerk-mean()-X`       | Mean of linear body jerk on x-axis (accelerometer)
`tBodyAccJerk-mean()-Y`       | Mean of linear body jerk on y-axis (accelerometer)
`tBodyAccJerk-mean()-Z`       | Mean of linear body jerk on z-axis (accelerometer)
`tBodyAccJerk-std()-X`        | Standard deviation of linear body jerk on x-axis (accelerometer)
`tBodyAccJerk-std()-Y`        | Standard deviation of linear body jerk on y-axis (accelerometer)
`tBodyAccJerk-std()-Z`        | Standard deviation of linear body jerk on z-axis (accelerometer)
`tBodyGyro-mean()-X`          | Mean of linear body acceleration on x-axis (gyroscope)
`tBodyGyro-mean()-Y`          | Mean of linear body acceleration on y-axis (gyroscope)
`tBodyGyro-mean()-Z`          | Mean of linear body acceleration on z-axis (gyroscope)
`tBodyGyro-std()-X`           | Standard deviation of linear body acceleration on x-axis (gyroscope)
`tBodyGyro-std()-Y`           | Standard deviation of linear body acceleration on y-axis (gyroscope)
`tBodyGyro-std()-Z`           | Standard deviation of linear body acceleration on z-axis (gyroscope)
`tBodyGyroJerk-mean()-X`      | Mean of linear body jerk on x-axis (gyroscope)
`tBodyGyroJerk-mean()-Y`      | Mean of linear body jerk on y-axis (gyroscope)
`tBodyGyroJerk-mean()-Z`      | Mean of linear body jerk on z-axis (gyroscope)
`tBodyGyroJerk-std()-X`       | Standard deviation of linear body jerk on x-axis (gyroscope)
`tBodyGyroJerk-std()-Y`       | Standard deviation of linear body jerk on y-axis (gyroscope)
`tBodyGyroJerk-std()-Z`       | Standard deviation of linear body jerk on z-axis (gyroscope)
`tBodyAccMag-mean()`          | Mean of body acceleration magnitude (accelerometer)
`tBodyAccMag-std()`           | Standard deviation of body acceleration magnitude (accelerometer)
`tGravityAccMag-mean()`       | Mean of gravity acceleration magnitude (accelerometer)
`tGravityAccMag-std()`        | Standard deviation of gravity acceleration magnitude (accelerometer)
`tBodyAccJerkMag-mean()`      | Mean of body jerk magnitude (accelerometer)
`tBodyAccJerkMag-std()`       | Standard deviation of body jerk magnitude (accelerometer)
`tBodyGyroMag-mean()`         | Mean of body acceleration magnitude (gyroscope)
`tBodyGyroMag-std()`          | Standard deviation of body acceleration magnitude (gyroscope)
`tBodyGyroJerkMag-mean()`     | Mean of body jerk magnitude (gyroscope)
`tBodyGyroJerkMag-std()`      | Standard deviation of body jerk magnitude (gyroscope)
`fBodyAcc-mean()-X`           | Mean of linear body acceleration on x-axis under FFT (accelerometer)
`fBodyAcc-mean()-Y`           | Mean of linear body acceleration on y-axis under FFT (accelerometer)
`fBodyAcc-mean()-Z`           | Mean of linear body acceleration on z-axis under FFT (accelerometer)
`fBodyAcc-std()-X`            | Standard deviation of linear body acceleration on x-axis under FFT (accelerometer)
`fBodyAcc-std()-Y`            | Standard deviation of linear body acceleration on y-axis under FFT (accelerometer)
`fBodyAcc-std()-Z`            | Standard deviation of linear body acceleration on z-axis under FFT (accelerometer)
`fBodyAccJerk-mean()-X`       | Mean of linear body jerk on x-axis under FFT (accelerometer)
`fBodyAccJerk-mean()-Y`       | Mean of linear body jerk on y-axis under FFT (accelerometer)
`fBodyAccJerk-mean()-Z`       | Mean of linear body jerk on z-axis under FFT (accelerometer)
`fBodyAccJerk-std()-X`        | Standard deviation of linear body jerk on x-axis under FFT (accelerometer)
`fBodyAccJerk-std()-Y`        | Standard deviation of linear body jerk on y-axis under FFT (accelerometer)
`fBodyAccJerk-std()-Z`        | Standard deviation of linear body jerk on z-axis under FFT (accelerometer)
`fBodyGyro-mean()-X`          | Mean of linear body acceleration on x-axis under FFT (gyroscope)
`fBodyGyro-mean()-Y`          | Mean of linear body acceleration on y-axis under FFT (gyroscope)
`fBodyGyro-mean()-Z`          | Mean of linear body acceleration on z-axis under FFT (gyroscope)
`fBodyGyro-std()-X`           | Standard deviation of linear body acceleration on x-axis under FFT (gyroscope)
`fBodyGyro-std()-Y`           | Standard deviation of linear body acceleration on y-axis under FFT (gyroscope)
`fBodyGyro-std()-Z`           | Standard deviation of linear body acceleration on z-axis under FFT (gyroscope)
`fBodyAccMag-mean()`          | Mean of body acceleration magnitude under FFT (accelerometer)
`fBodyAccMag-std()`           | Standard deviation of body acceleration magnitude under FFT (accelerometer)
`fBodyBodyAccJerkMag-mean()`  | Mean of body jerk magnitude under FFT (accelerometer)
`fBodyBodyAccJerkMag-std()`   | Standard deviation of body jerk magnitude under FFT (accelerometer)
`fBodyBodyGyroMag-mean()`     | Mean of body acceleration magnitude under FFT (gyroscope)
`fBodyBodyGyroMag-std()`      | Standard deviation of body acceleration magnitude under FFT (gyroscope)
`fBodyBodyGyroJerkMag-mean()` | Mean of body jerk magnitude under FFT (gyroscope)
`fBodyBodyGyroJerkMag-std()`  | Standard deviation of body jerk magnitude under FFT (gyroscope)

Please note that all numerical measurements are unitless as they have been normalized to [-1, 1].