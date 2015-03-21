#set working directory

setwd("C:/Users/User/Desktop/Coursera/Getting and Cleaning/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")

#read data 

X_trainData <- read.table("./train/X_train.txt")
Y_trainData <- read.table("./train/y_train.txt")
subject_trainData <- read.table("./train/subject_train.txt")
Features <- read.table("features.txt")
Activity_Labels <- read.table("activity_labels.txt")


X_testData <- read.table("./test/X_test.txt")
Y_testData <- read.table("./test/y_test.txt")
subject_testData <- read.table("./test/subject_test.txt")

#Merges the training and the test sets to create one data set

mergedXData <- rbind(X_trainData, X_testData)
mergedYData <- rbind(Y_trainData, Y_testData)
mergedsubjectData <- rbind(subject_trainData, subject_testData)

#Extracts only the measurements on the mean and standard deviation for each measurement.

features_mean_std <- grep("mean\\(\\)|std\\(\\)", Features[, 2])
length(features_mean_std) #66

#subset data 

subset_mergedXData <- mergedXData[, features_mean_std]


#update X data column names from Features.txt

names(subset_mergedXData) <- Features[features_mean_std, 2]


#update Y data with activity names

mergedYData[, 1] <- Activity_Labels[mergedYData[, 1], 2]

names(mergedYData) <- "Activity"

#update subject data column names

names(mergedsubjectData) <- "Subject"

#merge all of data

final_data <- cbind(subset_mergedXData, mergedYData, mergedsubjectData)


#create new file with tidy subset of averages by activity and subject 

subset_means <- ddply(final_data, .(Subject, Activity), function(x) colMeans(x[, 1:66]))

#write table to file with averages by activity and subject

write.table(subset_means, "final_data_averages.txt", row.names=FALSE) 
