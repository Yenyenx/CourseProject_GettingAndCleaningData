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

* tBodyAcc-std()-X : standard deviation of the signal recorded to build the variable tBodyAcc-mean()-X. Data has been averaged over window period for each activity and each subject.
* tBodyAcc-std()-Y : same as above but on the Y axis.
* tBodyAcc-std()-Z : same as above but on the Z axis.

* tGravityAcc-mean()-X :
* tGravityAcc-mean()-Y :
* tGravityAcc-mean()-Z :

* tGravityAcc-std()-X :
* tGravityAcc-std()-Y :
* tGravityAcc-std()-Z :

* tBodyAccJerk-mean()-X :
* tBodyAccJerk-mean()-Y :
* tBodyAccJerk-mean()-Z :

* tBodyAccJerk-std()-X :
* tBodyAccJerk-std()-Y :
* tBodyAccJerk-std()-Z :

* tBodyGyro-mean()-X :         
* tBodyGyro-mean()-Y :
* tBodyGyro-mean()-Z :

* tBodyGyro-std()-X :
* tBodyGyro-std()-Y :
* tBodyGyro-std()-Z :

* tBodyGyroJerk-mean()-X :     
* tBodyGyroJerk-mean()-Y :
* tBodyGyroJerk-mean()-Z :
* tBodyGyroJerk-std()-X :
* tBodyGyroJerk-std()-Y :
* tBodyGyroJerk-std()-Z :

* tBodyAccMag-mean() :         
* tBodyAccMag-std() :
* tGravityAccMag-mean() :
* tGravityAccMag-std() :

* tBodyAccJerkMag-mean() :
* tBodyAccJerkMag-std() :

* tBodyGyroMag-mean() :        
* tBodyGyroMag-std() :

* tBodyGyroJerkMag-mean() :
* tBodyGyroJerkMag-std() :     

* fBodyAcc-mean()-X :
* fBodyAcc-mean()-Y :
* fBodyAcc-mean()-Z :
* fBodyAcc-std()-X :
* fBodyAcc-std()-Y :
* fBodyAcc-std()-Z :

* fBodyAccJerk-mean()-X :
* fBodyAccJerk-mean()-Y :
* fBodyAccJerk-mean()-Z :
* fBodyAccJerk-std()-X :
* fBodyAccJerk-std()-Y :        
* fBodyAccJerk-std()-Z :

* fBodyGyro-mean()-X :          
* fBodyGyro-mean()-Y :
* fBodyGyro-mean()-Z :
* fBodyGyro-std()-X :
* fBodyGyro-std()-Y :
* fBodyGyro-std()-Z :

* fBodyAccMag-mean() :
* fBodyAccMag-std() :

* fBodyBodyAccJerkMag-mean() :
* fBodyBodyAccJerkMag-std() :

* fBodyBodyGyroMag-mean() :
* fBodyBodyGyroMag-std() :

* fBodyBodyGyroJerkMag-mean() :
* fBodyBodyGyroJerkMag-std() : 

### Script requirments

The script contained in the file run_analysis.R is designed to be saved in the main directory. It can be run as long as the Samsung data are in the current working directory.

### Data transformation applied through the script

