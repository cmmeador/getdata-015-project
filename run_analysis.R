oldwd <- getwd()
setwd("C:/Users/cmeador/Box Sync/Scripting Projects/R/cmmeador/getdata-015/Week3/getdata-015-project")

activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ")
names(activity_labels) <- c("activity_label_id", "activity_label_name")

features <- read.csv("UCI HAR Dataset/features.txt", header=FALSE, sep=" ")
names(features) <- c("feature_id", "feature_name")

testData <- cbind(read.csv("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="", strip.white=TRUE))
names(testData) <- c("subject_id","activity_label_id",paste("feature_value_",seq_along(1:561),sep=""))
testData$source = "test"

trainData <- cbind(read.csv("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="", strip.white=TRUE))
names(trainData) <- c("subject_id","activity_label_id",paste("feature_value_",seq_along(1:561),sep=""))
trainData$source = "train"

allData <- rbind(testData,trainData)

# note merge rearranges the rows
temp <- merge(allData,activity_labels)

setwd(oldwd)