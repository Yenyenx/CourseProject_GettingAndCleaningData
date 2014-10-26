## create directory
if(!file.exists("data")) {
  dir.create("data")
}

## load file + unzip
zipFileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipFileUrl, destfile = "./data/projetDataSet.zip", method = "curl")
unzip("./data/projetDataSet.zip", exdir = "./data")

## clean memory
rm(list=ls())

## 1.  Merges the training and the test sets to create one data set.
subDir <- "./data/UCI HAR Dataset"

## Load features and activity labels
features <- read.table(file= paste(subDir, "features.txt", sep= "/"), header=F, stringsAsFactors=F)
names(features) <- c("index","feature")

activityLabels <- read.table(file= paste(subDir, "activity_labels.txt", sep= "/"), header=F, stringsAsFactors=F)
names(activityLabels) <- c("key", "activity")

##
subSet <- "train"
trainingData <- read.table(file= paste(subDir, subSet, paste0("X_",subSet,".txt"), sep= "/"), header=F, colClasses="numeric")

data <- read.table(file= paste(subDir, subSet, paste0("y_",subSet,".txt"), sep= "/"), header=F)
trainingData$activity <- data[,ncol(data)]
  
data <- read.table(file= paste(subDir, subSet, paste0("subject_",subSet,".txt"), sep= "/"), header=F)
trainingData$subjectId <- data[,ncol(data)]

trainingData$dataType <- "Training"

##
subSet <- "test"
testData <- read.table(file= paste(subDir, subSet, paste0("X_",subSet,".txt"), sep= "/"), header=F, colClasses="numeric")

data <- read.table(file= paste(subDir, subSet, paste0("y_",subSet,".txt"), sep= "/"), header=F)
testData$activity <- data[,ncol(data)]

data <- read.table(file= paste(subDir, subSet, paste0("subject_",subSet,".txt"), sep= "/"), header=F)
testData$subjectId <- data[,ncol(data)]

testData$dataType <- "Test"


## merge testData and trainingData to create one dataset
row.names(testData) <- paste0("Test",row.names(testData))
row.names(trainingData) <- paste0("Train",row.names(trainingData))
dataSet <- rbind(testData,trainingData)
names(dataSet)[1:(ncol(dataSet)-3)] <- c(features$feature)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
measurmentsToInclude <- grepl("-mean\\(|-std\\(", features$feature)
measurmentsToInclude <- c(measurmentsToInclude, rep(TRUE,3))
extractSet <- dataSet[,measurmentsToInclude]

## 3. Uses descriptive activity names to name the activities in the data set
extractSet$activity <- activityLabels[extractSet$activity,2]

## 4. Appropriately labels the data set with descriptive variable names.
## already done above using features.
## names(extractSet)

## 5. From the data set in step 4, creates a second, independent tidy 
## data set with the average of each variable for each activity and each subject.
library(dplyr)
extractDT <- tbl_df(extractSet)

extractDT %>%
  select(-dataType) %>%
  group_by(activity,subjectId) %>%
  summarise_each(funs(mean)) -> meanVariablesByActivityAndSubject

write.table(meanVariablesByActivityAndSubject, file= "./mean_variables_by_activity_and_subject.txt", row.name=FALSE)