The input files 
features.txt, X_test.txt, X_train.txt, subject_train.txt, subject_text.txt, activity_labels.txt, y_test.txt, y_train.txt
are read using the read.table and stored into local variables
features, testData, trainData, subjectTrain, subjectTest, activityLabels, testActivity and trainActivity.

The testData and trainData data frames are merged to create mergedData.

mean and std features are grepped from features data frame and stored into tidyFeatures.

tidyMergedData is created out of selecting tidyFeatures from mergedData.

The test and train subjects are merged into mergedSubject.

