CodeBook
==============

This CodeBook describes whow to build the tidy data set from the original data set described in

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The sourse dataset could be obtained from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files "README.txt" and "features_info.txt" contain descriptions of the original data set, 
data tables and variables.

### Purpose

The purpose is to create the new tidy dataset containing only average values 
for the mean and standard deviation of all observations from the original data set:

* the training and the test data sets shoulde be merged into one table;
* activities should be labeled;
* variables should have descriptive variable names.

### Tidy data set

Tidy data set consists of one data table "tidy_data_set.txt". It containes next variables:

* "Volunteer" - identifies the subject who performed the activity in observation (its range is from 1 to 30).
* "Activity" - labeles of activities which was performed in observation.

Other variables contain the average values of original variables for each activity and each subject (volunteer):

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

1. Tables "subject_train", "subject_test", "y_train", "y_test", "x_train" and "x_test" from the original data set was merged by rows into tables "subject", "y" and "x" respectively. On this step the only variables containing "mean()" or "std()" in their names (according to table "features.txt" by greping feature names for "mean()" and "std()" substrings) was left in the table "x". After that tables "subject", "y" and "x" was merged into one table by columns.
2. Names of variables in table "x" was resolved according to the list "features.txt".
3. Labels of activities was resolved according to table "activity_labels".
4. Final tidy data set was created by grouping dataset by colums this subjects and activities and summarising other variables by useing function mean().
