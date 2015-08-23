The input files 
features.txt, X_test.txt, X_train.txt, subject_train.txt, subject_text.txt, activity_labels.txt, y_test.txt, y_train.txt
are read using the read.table and stored into local variables
features, testData, trainData, subjectTrain, subjectTest, activityLabels, testActivity and trainActivity.

The testData and trainData data frames are merged to create mergedData.

mean and std features are grepped from features data frame and stored into tidyFeatures.

tidyMergedData is created out of selecting tidyFeatures from mergedData.

The test and train subjects are merged into mergedSubject.

The Activitiy names are looked up from the activityLabels.

The Subject and Activity are added to the tidyMergedData.

The averages of means and stds are calcualted by running summarise_each() of ddply, and the output is written to a file(final.txt).
