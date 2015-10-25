# Getting and Cleaning Data Course Project

This is the repo for Getting and Cleaning Data Course Project. It contains next files:

* CodeBook.md - information about the variables used on the tidy data set.
* run_analysis.R - script for preparing tidy data set from the original data set.

Next instruction describes how to get the original data set and use the script "run_analysis.R".

### How to obtain original data set

To get original data set please follow next steps.

1. Download source date archive from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unpack the downloaded archive to the suitable directory.

After unpacking you will get the working directory (\<DIR\>)  
./UCI HAR Dataset/  
which must contain next 8 files (among others):

./train/subject_train.txt - training list of subjects  
./train/X_train.txt - training values of features  
./train/y_train.txt - training class labels of activities  
./test/subject_test.txt - test list of subjects  
./test/X_test.txt - test values of features  
./test/y_test.txt - test class labels of activities  
./activity_labels.txt - class labels with their activity names  
./features.txt - list of all features

### How to build tidy data set

To build tidy data set please follow next steps.

1. Download script "run_analysis.R" and plase it into \<DIR\>.
2. Run RStudio and set the working directory by setwd("\<DIR\>")
3. Install R pacjage "dplyr" if it was not already installed.
4. Load and execute script "run_analysis.R"

If the process has successfully completed the file  
./tidy_data_set.txt  
should contain the tidy data set.

Thank you.


