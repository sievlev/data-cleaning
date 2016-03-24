CodeBook
---

## Additional columns
**subject** - numerical identifiers of subjects participating in this experiment.
**activity** - activity labels, one of: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

## Summary data set
Script run_analysis.R outputs a summarized data set.
Columns containing averages of column values obtained from the original data set, aggregated by subject and activity.

## Columns from original data set
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, t
GravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

The set of variables that were estimated from these signals are:
* mean(): Mean value
* std(): Standard deviation

Here's a completed list of features used in summary dataset.

Original feature number | Original feature name       | Column name in summary dataset
------------------------------------------------------------------------------------
1                       | tBodyAcc-mean()-X           | tBodyAcc.mean.X
2                       | tBodyAcc-mean()-Y           | tBodyAcc.mean.Y
3                       | tBodyAcc-mean()-Z           | tBodyAcc.mean.Z
4                       | tBodyAcc-std()-X            | tBodyAcc.std.X
5                       | tBodyAcc-std()-Y            | tBodyAcc.std.Y
6                       | tBodyAcc-std()-Z            | tBodyAcc.std.Z
41                      | tGravityAcc-mean()-X        | tGravityAcc.mean.X
42                      | tGravityAcc-mean()-Y        | tGravityAcc.mean.Y
43                      | tGravityAcc-mean()-Z        | tGravityAcc.mean.Z
44                      | tGravityAcc-std()-X         | tGravityAcc.std.X
45                      | tGravityAcc-std()-Y         | tGravityAcc.std.Y
46                      | tGravityAcc-std()-Z         | tGravityAcc.std.Z
81                      | tBodyAccJerk-mean()-X       | tBodyAccJerk.mean.X
82                      | tBodyAccJerk-mean()-Y       | tBodyAccJerk.mean.Y
83                      | tBodyAccJerk-mean()-Z       | tBodyAccJerk.mean.Z
84                      | tBodyAccJerk-std()-X        | tBodyAccJerk.std.X
85                      | tBodyAccJerk-std()-Y        | tBodyAccJerk.std.Y
86                      | tBodyAccJerk-std()-Z        | tBodyAccJerk.std.Z
121                     | tBodyGyro-mean()-X          | tBodyGyro.mean.X
122                     | tBodyGyro-mean()-Y          | tBodyGyro.mean.Y
123                     | tBodyGyro-mean()-Z          | tBodyGyro.mean.Z
124                     | tBodyGyro-std()-X           | tBodyGyro.std.X
125                     | tBodyGyro-std()-Y           | tBodyGyro.std.Y
126                     | tBodyGyro-std()-Z           | tBodyGyro.std.Z
161                     | tBodyGyroJerk-mean()-X      | tBodyGyroJerk.mean.X
162                     | tBodyGyroJerk-mean()-Y      | tBodyGyroJerk.mean.Y
163                     | tBodyGyroJerk-mean()-Z      | tBodyGyroJerk.mean.Z
164                     | tBodyGyroJerk-std()-X       | tBodyGyroJerk.std.X
165                     | tBodyGyroJerk-std()-Y       | tBodyGyroJerk.std.Y
166                     | tBodyGyroJerk-std()-Z       | tBodyGyroJerk.std.Z
201                     | tBodyAccMag-mean()          | tBodyAccMag.mean
202                     | tBodyAccMag-std()           | tBodyAccMag.std
214                     | tGravityAccMag-mean()       | tGravityAccMag.mean
215                     | tGravityAccMag-std()        | tGravityAccMag.std
227                     | tBodyAccJerkMag-mean()      | tBodyAccJerkMag.mean
228                     | tBodyAccJerkMag-std()       | tBodyAccJerkMag.std
240                     | tBodyGyroMag-mean()         | tBodyGyroMag.mean
241                     | tBodyGyroMag-std()          | tBodyGyroMag.std
253                     | tBodyGyroJerkMag-mean()     | tBodyGyroJerkMag.mean
254                     | tBodyGyroJerkMag-std()      | tBodyGyroJerkMag.std
266                     | fBodyAcc-mean()-X           | fBodyAcc.mean.X
267                     | fBodyAcc-mean()-Y           | fBodyAcc.mean.Y
268                     | fBodyAcc-mean()-Z           | fBodyAcc.mean.Z
269                     | fBodyAcc-std()-X            | fBodyAcc.std.X
270                     | fBodyAcc-std()-Y            | fBodyAcc.std.Y
271                     | fBodyAcc-std()-Z            | fBodyAcc.std.Z
345                     | fBodyAccJerk-mean()-X       | fBodyAccJerk.mean.X
346                     | fBodyAccJerk-mean()-Y       | fBodyAccJerk.mean.Y
347                     | fBodyAccJerk-mean()-Z       | fBodyAccJerk.mean.Z
348                     | fBodyAccJerk-std()-X        | fBodyAccJerk.std.X
349                     | fBodyAccJerk-std()-Y        | fBodyAccJerk.std.Y
350                     | fBodyAccJerk-std()-Z        | fBodyAccJerk.std.Z
424                     | fBodyGyro-mean()-X          | fBodyGyro.mean.X
425                     | fBodyGyro-mean()-Y          | fBodyGyro.mean.Y
426                     | fBodyGyro-mean()-Z          | fBodyGyro.mean.Z
427                     | fBodyGyro-std()-X           | fBodyGyro.std.X
428                     | fBodyGyro-std()-Y           | fBodyGyro.std.Y
429                     | fBodyGyro-std()-Z           | fBodyGyro.std.Z
503                     | fBodyAccMag-mean()          | fBodyAccMag.mean
504                     | fBodyAccMag-std()           | fBodyAccMag.std
516                     | fBodyBodyAccJerkMag-mean()  | fBodyBodyAccJerkMag.mean
517                     | fBodyBodyAccJerkMag-std()   | fBodyBodyAccJerkMag.std
529                     | fBodyBodyGyroMag-mean()     | fBodyBodyGyroMag.mean
530                     | fBodyBodyGyroMag-std()      | fBodyBodyGyroMag.std
542                     | fBodyBodyGyroJerkMag-mean() | fBodyBodyGyroJerkMag.mean
543                     | fBodyBodyGyroJerkMag-std()  | fBodyBodyGyroJerkMag.std
