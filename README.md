# GettingCleanedData

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- The script reads the test and train data.
- The data is merged using rbind
- Column names are applied to merged data
- mean and std features are greped from features.txt
- mean and std features are pulled out of merged data.
- Subject and Activity are applied to merged data to obtain tidied merge data.
- Final averages of individual features grouped by Subject & Activity are obtained and in the object named final.
