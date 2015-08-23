features <- read.delim("F:./././UCIHARDataset/features.txt", header = FALSE, sep = " ")
testData <- read.table("F:./././UCIHARDataset/test/X_test.txt", header = FALSE)
trainData <- read.table("F:./././UCIHARDataset/train/X_train.txt", header = FALSE)
mergedData <- rbind(testData, trainData)
tidyFeaturesMean <- grep("meanFreq", grep("mean", features[,2], value = TRUE), value = TRUE, invert = TRUE)
tidyFeaturesStd <- grep("stdFreq", grep("std", features[,2], value = TRUE), value = TRUE, invert = TRUE)
tidyFeatures <- c(tidyFeaturesMean, tidyFeaturesStd)
colnames(mergedData) <- features[,2]
tidyMergedData <- mergedData[, tidyFeatures]
trainSubject <- read.table("F:./././UCIHARDataset/train/subject_train.txt", header = FALSE)
testSubject <- read.table("F:./././UCIHARDataset/test/subject_test.txt", header = FALSE)
mergedSubject <- rbind(testSubject, trainSubject)
activityLabels <- read.table("F:./././UCIHARDataset/activity_labels.txt", header = FALSE)
activityNames <- as.vector(activityLabels$V2)
testActivity <- read.table("F:./././UCIHARDataset/test/y_test.txt", header = FALSE)
testActivities <- as.vector(testActivity)
testActivityNames = character(nrow(testActivities))
i = 1
for (testAct in 1:nrow(testActivities)){
testActivityNames[i] = activityNames[testActivities[i, ]]
i = i + 1
}
trainActivity <- read.table("F:./././UCIHARDataset/train/y_train.txt", header = FALSE)
trainActivities <- as.vector(trainActivity)
trainActivityNames = character(nrow(trainActivities))
i = 1
for (testAct in 1:nrow(trainActivities)){
trainActivityNames[i] = activityNames[trainActivities[i, ]]
i = i + 1
}
actvities <- as.data.frame(c(testActivityNames, trainActivityNames))
tidyMergedData[, "Subject"] <- mergedSubject
tidyMergedData$Activity <- actvities
tidyMergedData[, "Activity"] <- actvities
final <- tidyMergedData %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
write.table(final, "F:./UCIHARDataset/final.txt", row.name=FALSE)
