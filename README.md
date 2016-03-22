Getting and Cleaning Data Project
---

This repository contains R code that does some preprocessing on [Human Activity Recognition data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

See CodeBook.md for details.

## How script works
1. Merges the training and the test sets to create one data set;
2. Extracts only the measurements on the mean and standard deviation for each measurement;
3. Translates activity codes into a more descriptive names;
4. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to use script
* Download dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
* Unzip archive into folder on your local drive
* Put run_analysis.R into the same folder
* Sample directory structure will look like:
```
$ ls -1
UCI HAR Dataset
run_analysis.R
```
* Run script (or source script inside interpreter). As a result summary.txt with table will be created
