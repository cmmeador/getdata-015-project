oldwd <- getwd()
setwd("C:/Users/cmead/Box Sync/Scripting Projects/R/cmmeador/getdata-015/Week3/getdata-015-project")

# read in activity_labels.txt
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ")
names(activity_labels) <- c("activity_label_id", "activity_label_name")

# read in features.txt
features <- read.csv("UCI HAR Dataset/features.txt", header=FALSE, sep=" ")
names(features) <- c("feature_id", "feature_name")

# read in test data
testData <- cbind(read.csv("UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/test/y_test.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="", strip.white=TRUE))
names(testData) <- c("subject_id","activity_label_id",paste("feature_value_",seq_along(1:561),sep=""))
# add a variable in case we need to identify the source of these observations
testData$source = "test"

# read in training data (same format as test)
trainData <- cbind(read.csv("UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/train/y_train.txt", header=FALSE, sep=""), read.csv("UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="", strip.white=TRUE))
names(trainData) <- c("subject_id","activity_label_id",paste("feature_value_",seq_along(1:561),sep=""))
# add a variable in case we need to identify the source of these observations
trainData$source = "train"

#combine test and training data
allData <- rbind(testData,trainData)

# replace generic feature_value_X labels with actual label from features.txt
names(allData) <- c("subject_id","activity_label_id",as.character(features$feature_name),"source")

# merge in the activity labels, noting that merge rearranges the rows of the DF
temp <- merge(allData,activity_labels)
temp$activity_label <- as.character(temp$activity_label_name)

# interested only in feature data with these substrings -- mean() and std() values
substrings <- c("mean\\(\\)","std\\(\\)")
columnsOfInterest <- c("subject_id","activity_label",names(temp)[grep(paste(substrings, collapse='|'), names(temp), ignore.case=TRUE)])

# create a new DF that extracts only the columns we are interested in
extractedData <- temp[,columnsOfInterest]

# we will need dplyr for the final steps
library(dplyr)

# summarize the data by applying mean() to each of the fields, grouping by subject_id and activty_label
summaryData <- extractedData %>% group_by(subject_id,activity_label) %>% summarise_each(funs(mean))

# output the summary data df to a text file
write.table(summaryData, file="summaryData.txt", row.names = FALSE)

setwd(oldwd)