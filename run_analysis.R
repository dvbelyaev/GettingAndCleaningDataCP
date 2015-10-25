## This script prepare tidy data set from the original data set

library(dplyr)

## ================================
## 1. Reading and merging data sets
## ================================

## Reading and merging subjects data sets
subject_train <- read.csv("./train/subject_train.txt", header = FALSE)
subject_test <- read.csv("./test/subject_test.txt", header = FALSE)
subject <- rbind(subject_train, subject_test)

## Reading and merging activities data sets
y_train <- read.csv("./train/y_train.txt", header = FALSE)
y_test <- read.csv("./test/y_test.txt", header = FALSE)
y <- rbind(y_train, y_test)

## Reading and merging observations
x_train <- read.csv("./train/X_train.txt", header = FALSE, sep = "")
x_test <- read.csv("./test/X_test.txt", header = FALSE, sep = "")
x <- rbind(x_train, x_test)

## Extracting the measurements on the mean and standard deviation
features <- read.csv("./features.txt", header = FALSE, sep = "")
mean_or_std <- grep("mean\\(\\)|std\\(\\)", features[, 2])
x <- x[, mean_or_std]

## Merging all datasets
data_set <- cbind(subject, y, x)

rm(subject_train, subject_test, x_train, x_test, y_train, y_test, x, y, subject)


## ============================
## 2. Resolving variables names
## ============================

var_heads <- as.character(features[features[mean_or_std, 1], 2])
names(data_set) <- c(c("Volunteer", "Activity_ID"), var_heads)

rm(var_heads, mean_or_std, features)


## ==============================
## 3. Resolving activities labels
## ==============================

activity_labels <- read.csv("./activity_labels.txt", header = FALSE, sep = "")
names(activity_labels) <- c("Activity_ID", "Activity")
data_set <- merge(data_set, activity_labels, sort = FALSE)
data_set <- data_set[, !(names(data_set) == "Activity_ID")]

rm(activity_labels)

## ==============================================================
## 4. Creating independent tidy data set with the average of each 
##    variable for each activity and each subject
## ==============================================================

result <- 
  data_set %>%
  group_by(Volunteer, Activity) %>%
  summarise_each(funs(mean))

## =========================
## 5. Writing final data set 
## =========================

write.table(result, "./tidy_data_set.txt", row.name = FALSE)
