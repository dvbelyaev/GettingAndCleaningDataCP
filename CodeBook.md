CodeBook
==============

This CodeBook describes: whow to build the tidy data set was build from the original data set described in

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The sourse dataset was obtained from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files "README.txt" and "features_info.txt" contain descriptions of the sourse data set, 
data tables and variables.

### Purpose

The purpose is to create the new tidy dataset containing only average values 
for the mean and standard deviation for all observations from the original data set:

* the training and the test sets shoulde be merged into one table;
* activities should be labeled;
* variables should have descriptive variable names.

### Tidy data set

Tidy data set consists of one data table "tidy_data_set.txt". It containes next variables:

* "Volunteer" - identifies the subject who performed the activity in observation (its range is from 1 to 30).
* "Activity" - labeles of activities which was performed in observation.

Other variables contain the average of source variables for each activity and each subject (volunteer):

* tBodyAcc-TOE-XYZ
* tGravityAcc-TOE-XYZ
* tBodyAccJerk-TOE-XYZ
* tBodyGyro-TOE-XYZ
* tBodyGyroJerk-TOE-XYZ
* tBodyAccMag-TOE
* tGravityAccMag-TOE
* tBodyAccJerkMag-TOE
* tBodyGyroMag-TOE
* tBodyGyroJerkMag-TOE
* fBodyAcc-XYZ-TOE
* fBodyAccJerk-XYZ-TOE
* fBodyGyro-XYZ-TOE
* fBodyAccMag-TOE
* fBodyAccJerkMag-TOE
* fBodyGyroMag-TOE
* fBodyGyroJerkMag-TOE

where

* '-XYZ' denotes 3-axial signals in the X, Y and Z directions;
* '-TOE' denotes the type of estimation from signals: mean() - mean value, std() - standard deviation.


## Transformations

