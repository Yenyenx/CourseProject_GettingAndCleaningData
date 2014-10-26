## Code book

We describe here the variables, the data, and any transformations or work that we performed when running the script run_analysis.R to clean up the data.

### Initial raw dataset

The initial raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

These data were collected during experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, engineers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Variable description

The output file generated be the run_analysis.R script is txt file. The first line contains the variables names. 

* activity (character) : represent one of the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the volunteers during the experiment.
* subjectId (integer) : represent the id of the 30 volunteers. Its range is from 1 to 30.

* tBodyAcc-mean()-X : The body acceleration signal from the smartphone accelerometer X axis obtained by subtracting the gravity from the total acceleration. Data has been averaged over window period for each activity and each subject. It is expressed in standard gravity units 'g'.
* tBodyAcc-mean()-Y : same as above but on the Y axis.
* tBodyAcc-mean()-Z : same as above but on the Z axis.

* tBodyAcc-std()-X : Standard deviation of the signal recorded to build the variable tBodyAcc-mean()-X. Data has been averaged over window period for each activity and each subject.
* tBodyAcc-std()-Y : same as above but on the Y axis.
* tBodyAcc-std()-Z : same as above but on the Z axis.

* tGravityAcc-mean()-X : The gravity acceleration signal from the smartphone accelerometer X axis. Data has been averaged over window period for each activity and each subject. It is expressed in standard gravity units 'g'.
* tGravityAcc-mean()-Y : same as above but on the Y axis.
* tGravityAcc-mean()-Z : same as above but on the Z axis.

* tGravityAcc-std()-X : Standard deviation of the signal recorded to build the variable tGravityAcc-mean()-X. Data has been averaged over window period for each activity and each subject.
* tGravityAcc-std()-Y : same as above but on the Y axis.
* tGravityAcc-std()-Z : same as above but on the Z axis.

* tBodyAccJerk-mean()-X : Jerk signal computed using tBodyAcc-X variable. Data has been averaged over window period for each activity and each subject. It is expressed in standard gravity units 'g'.
* tBodyAccJerk-mean()-Y : same as above but on the Y axis.
* tBodyAccJerk-mean()-Z : same as above but on the Z axis.

* tBodyAccJerk-std()-X : Standard deviation of the signal recorded to build the variable tBodyAccJerk-mean()-X. Data has been averaged over window period for each activity and each subject.
* tBodyAccJerk-std()-Y : same as above but on the Y axis.
* tBodyAccJerk-std()-Z : same as above but on the Z axis.

* tBodyGyro-mean()-X : The angular velocity vector measured by the gyroscope on the X-axis. The units are radians/second. Data has been averaged over window period for each activity and each subject.
* tBodyGyro-mean()-Y : same as above but on the Y axis.
* tBodyGyro-mean()-Z : same as above but on the Z axis.

* tBodyGyro-std()-X : Standard deviation of the signal recorded to build the variable tBodyGyro-mean()-X. Data has been averaged over window period for each activity and each subject.
* tBodyGyro-std()-Y : same as above but on the Y axis.
* tBodyGyro-std()-Z : same as above but on the Z axis.

* tBodyGyroJerk-mean()-X : Jerk signal computed using tBodyGyro-X variable. Data has been averaged over window period for each activity and each subject. It is expressed in radians/second.
* tBodyGyroJerk-mean()-Y : same as above but on the Y axis.
* tBodyGyroJerk-mean()-Z : same as above but on the Z axis.

* tBodyGyroJerk-std()-X : Standard deviation of the signal recorded to build the variable tBodyGyroJerk-mean()-X. Data has been averaged over window period for each activity and each subject.
* tBodyGyroJerk-std()-Y : same as above but on the Y axis.
* tBodyGyroJerk-std()-Z : same as above but on the Z axis.

* tBodyAccMag-mean() : Mag signal computed over tBodyAcc variable expressed in standard gravity units. Data has been averaged over window period for each activity and each subject.
* tBodyAccMag-std() : Standard deviation computed on previous signal expressed in standard gravity units.

* tGravityAccMag-mean() : Mag signal computed over tGravityAcc variable expressed in standard gravity units. Data has been averaged over window period for each activity and each subject.
* tGravityAccMag-std() : Standard deviation computed on previous signal expressed in standard gravity units.

* tBodyAccJerkMag-mean() : Jerk Mag signal computed over tBodyAcc variable expressed in standard gravity units. Data has been averaged over window period for each activity and each subject.
* tBodyAccJerkMag-std() : Standard deviation computed on previous signal expressed in standard gravity units.

* tBodyGyroMag-mean() : Mag signal computed over tBodyGyro variable expressed in radians/second. Data has been averaged over window period for each activity and each subject.   
* tBodyGyroMag-std() : Standard deviation computed on previous signal expressed in radians/second.

* tBodyGyroJerkMag-mean() : Jerk Mag signal computed over tBodyGyro variable expressed in radians/second. Data has been averaged over window period for each activity and each subject.
* tBodyGyroJerkMag-std() : Standard deviation computed on previous signal expressed in radians/second.

* fBodyAcc-mean()-X : frequency variable equivalent to tBodyAcc-mean()-X.
* fBodyAcc-mean()-Y : frequency variable equivalent to tBodyAcc-mean()-Y.
* fBodyAcc-mean()-Z : frequency variable equivalent to tBodyAcc-mean()-Z.

* fBodyAcc-std()-X : frequency variable equivalent to tBodyAcc-std()-X.
* fBodyAcc-std()-Y : frequency variable equivalent to tBodyAcc-std()-Y.
* fBodyAcc-std()-Z : frequency variable equivalent to tBodyAcc-std()-Z.

* fBodyAccJerk-mean()-X : frequency variable equivalent to tBodyAccJerk-mean()-X.
* fBodyAccJerk-mean()-Y : frequency variable equivalent to tBodyAccJerk-mean()-Y.
* fBodyAccJerk-mean()-Z : frequency variable equivalent to tBodyAccJerk-mean()-Z.

* fBodyAccJerk-std()-X : frequency variable equivalent to tBodyAccJerk-std()-X.
* fBodyAccJerk-std()-Y : frequency variable equivalent to tBodyAccJerk-std()-Y.
* fBodyAccJerk-std()-Z : frequency variable equivalent to tBodyAccJerk-std()-Z.

* fBodyGyro-mean()-X : frequency variable equivalent to tBodyGyro-mean()-X.
* fBodyGyro-mean()-Y : frequency variable equivalent to tBodyGyro-mean()-Y.
* fBodyGyro-mean()-Z : frequency variable equivalent to tBodyGyro-mean()-Z.

* fBodyGyro-std()-X : frequency variable equivalent to tBodyGyro-std()-X.
* fBodyGyro-std()-Y : frequency variable equivalent to tBodyGyro-std()-Y.
* fBodyGyro-std()-Z : frequency variable equivalent to tBodyGyro-std()-Z.

* fBodyAccMag-mean() : frequency variable equivalent to tBodyAccMag-mean().
* fBodyAccMag-std() : frequency variable equivalent to tBodyAccMag-mean().

* fBodyBodyAccJerkMag-mean() : frequency variable equivalent to tBodyBodyAccJerkMag-mean().
* fBodyBodyAccJerkMag-std() : frequency variable equivalent to tBodyBodyAccJerkMag-std().

* fBodyBodyGyroMag-mean() : frequency variable equivalent to tBodyBodyGyroMag-mean().
* fBodyBodyGyroMag-std() : frequency variable equivalent to tBodyBodyGyroMag-std().

* fBodyBodyGyroJerkMag-mean() : frequency variable equivalent to tBodyBodyGyroJerkMag-mean().
* fBodyBodyGyroJerkMag-std() : frequency variable equivalent to tBodyBodyGyroJerkMag-std().

### Script requirments

The script contained in the file run_analysis.R is designed to be saved in the main directory. It can be run as long as the Samsung data are in the current working directory.

### Data transformation applied through the script

The script run_analysis.R performs the following steps :

1. It extracts features names from the features.txt file and the activity labels from the activity_labels.txt file. 

2. It merges the 'training' and the 'test' sets to create one single data set. Data included in the Inertial Signals sub folder were excluded from the scope. Subject ids and activity labels are merged with numerical data frame.

3. It filters the measurment lists using keywords "mean()" and "std()" to only extract measurements on the mean and standard deviation. 

4. It uses descriptive activity names stored in the file activity_labels to name the activities in the data set. Features names are also used to name the columns of the data set.

5. From the data set created during the first four steps, the script creates a second set with the average of each variable kept in the first set grouped by activity and subject.
