library(reshape2)

# Create variale with file name
filename <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
        download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
        unzip(filename) 
}

# Load activity labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[1,2] <- as.character(features[1,2])

# Extract features data on mean and standard deviation
featuresFinal <- grep(".*mean.*|.*std.*", features[,2])
featuresFinal.names <- features[featuresFinal,2]
featuresFinal.names = gsub('-mean', 'Mean', featuresFinal.names)
featuresFinal.names = gsub('-std', 'Std', featuresFinal.names)
featuresFinal.names <- gsub('[-()]', '', featuresFinal.names)

# Load the train and test datasets
trainRaw <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresFinal]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, trainRaw)

testRaw <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresFinal]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, testRaw)

# merge datasets and add labels
fullData <- rbind(train, test)
colnames(fullData) <- c("subject", "activity", featuresFinal.names)

# turn activities & subjects into factors
fullData$activity <- factor(fullData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
fullData$subject <- as.factor(fullData$subject)

fullData.melted <- melt(fullData, id = c("subject", "activity"))
fullData.mean <- dcast(fullData.melted, subject + activity ~ variable, mean)

write.table(fullData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)


