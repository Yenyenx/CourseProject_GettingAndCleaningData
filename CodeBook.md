## Code book

We describe here the variables, the data, and any transformations or work that we performed when running the script run_analysis.R to clean up the data.

### Initial raw dataset

The initial raw data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Variable description

The output file generated be the run_analysis.R script is txt file. The first line contains the variables names. 

* activity :
* subjectId :

* tBodyAcc-mean()-X :
* tBodyAcc-mean()-Y :
* tBodyAcc-mean()-Z :
* tBodyAcc-std()-X :
* tBodyAcc-std()-Y :
* tBodyAcc-std()-Z :

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

