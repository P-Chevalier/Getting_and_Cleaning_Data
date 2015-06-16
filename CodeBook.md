---
title: "Codebook: Getting_and_Cleaning_Data - UCI HAR Dataset"
author: "P-Chevalier"
date: "20150612"
output:
  html_document:
    keep_md: yes
---
## CodeBook - Project Description
Create a tidy data set from the UCI HAR study which:
Merges both training and test data sets.
Extracts only mean and standard deviation measurements.
Uses descriptive activity names to name the activies.
Labels the data set with descriptive varible names.
Creates a second independent tidy data set with the average of each variable for each activity and each subject.
NOTE: This is an update of the two previous codebooks supplied by the authors (README.txt and features_info.txt).  They are included in the index at the bottom of this CodeBook.

## Study design and data processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

### Download of data
Data was downloaded from:  HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

### Notes on the original data download
### Data Description
###Zip file contained:
test directory
Inertial Signals directory (not used in current project)
subject_test.txt - 30 study subjects
X_test.txt - 561 metrics
y_test.txt - 6 activies

train directory
Inertial Signals directory (not used in current project)
subject_train.txt - 30 study subjects
X_train.txt - 561 metrics
y_train.txt - 6 activies

activity_labels.txt - describes the six activites
features.txt - a list of the 561 metrics
feature_info.txt - descriptions of the features measured (original study Codebook)
README.txt - description of orginal study and files associated with the study.

## Creating the tidy datafile
### Guide to create the tidy data file
### Data transformations
The data is downloaded and uncompressed.
The data is read into R.
X_test and X_train data sets are merged.
y_test and y_train data sets are merged.
subject_test and subject_train data sets are merged.
All test and train data sets are merged together.
All 561 features were read into R.
The 561 features are filtered for 33 'mean()' and 33 'std()' features.
according to the features_info.txt:
mean(): Mean value
std(): Standard deviation
all other features ignored (e.g. fBodyBodyGyroJerkMag-meanFreq())
Descriptive activity labels were substituted for activity column ids.
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING
Subject column name was updated to 'Subject'.
The subjects (1-30), Activities (6 Activities (eg. WALKING)), and data points (66 mean/std) were combined to create the initial tidy data set.
Aggregate function was used to compute the averages of each varible for each activity and each subject. 
Â 
## Description of the tidy_data_set_average.txt
The tidy_data_set_average.txt file is a data set of 180 observations of 68 variables.

## Description of the variables in the tidy_data_set_average.txt file

###Variable 1: Subject
###ID of subject.
Variable Class: int
Unique_Values: 1-30
Units: subject

###Variable 2: Activity
###Name of Activity.
Variable Class: chr
Unique_Values: Six Levels
Units: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

###Variable 3: Time_Body_Accelerometer_Mean.X
###The average of the means of accelerometer measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 4: Time_Body_Accelerometer_Mean.Y
###The average of the means of accelerometer measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 5: Time_Body_Accelerometer_Mean.Z
###The average of the means of accelerometer measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 6: Time_Body_Accelerometer_Standard_Deviation.X
###The average of the standard deviations of accelerometer measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 7: Time_Body_Accelerometer_Standard_Deviation.Y
###The average of the standard deviations of accelerometer measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 8: Time_Body_Accelerometer_Standard_Deviation.Z
###The average of the standard deviations of accelerometer measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 9: Time_Gravity_Accelerometer_Mean.X
###The average of the means of accelerometer measurements of a gravity measurement on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 10: Time_Gravity_Accelerometer_Mean.Y
###The average of the means of accelerometer measurements of a gravity measurement on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 11: Time_Gravity_Accelerometer_Mean.Z
###The average of the means of accelerometer measurements of a gravity measurement on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 12: Time_Gravity_Accelerometer_Standard_Deviation.X
###The average of the standard deviations of accelerometer measurements of a gravity measurement on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 13: Time_Gravity_Accelerometer_Standard_Deviation.Y
###The average of the standard deviations of accelerometer measurements of a gravity measurement on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 14: Time_Gravity_Accelerometer_Standard_Deviation.Z
###The average of the standard deviations of accelerometer measurements of a gravity measurement on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 15: Time_Body_Accelerometer_Jerk_Mean.X
###The average of the means of accelerometer measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 16: Time_Body_Accelerometer_Jerk_Mean.Y
###The average of the means of accelerometer measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 17: Time_Body_Accelerometer_Jerk_Mean.Z
###The average of the means of accelerometer measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 18: Time_Body_Accelerometer_Jerk_Standard_Deviation.X
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 19: Time_Body_Accelerometer_Jerk_Standard_Deviation.Y
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 20: Time_Body_Accelerometer_Jerk_Standard_Deviation.Z
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 21: Time_Body_Gyroscope_Mean.X
###The average of the means of gyroscoptic measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 22: Time_Body_Gyroscope_Mean.Y
###The average of the means of gyroscoptic measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 23: Time_Body_Gyroscope_Mean.Z
###The average of the means of gyroscoptic measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 24: Time_Body_Gyroscope_Standard_Deviation.X
###The average of the standard deviations of gyroscoptic measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 25: Time_Body_Gyroscope_Standard_Deviation.Y
###The average of the standard deviations of gyroscoptic measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 26: Time_Body_Gyroscope_Standard_Deviation.Z
###The average of the standard deviations of gyroscoptic measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 27: Time_Body_Gyroscope_Jerk_Mean.X
###The average of the means of gyroscoptic measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 28: Time_Body_Gyroscope_Jerk_Mean.Y
###The average of the means of gyroscoptic measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 29: Time_Body_Gyroscope_Jerk_Mean.Z
###The average of the means of gyroscoptic measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 30: Time_Body_Gyroscope_Jerk_Standard_Deviation.X
###The average of the standard deviations of gyroscoptic measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 31: Time_Body_Gyroscope_Jerk_Standard_Deviation.Y
###The average of the standard deviations of gyroscoptic measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 32: Time_Body_Gyroscope_Jerk_Standard_Deviation.Z
###The average of the standard deviations of gyroscoptic measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 33: Time_Body_Accelerometer_Magnitude_Mean
###The average of the means of accelerometer measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 34: Time_Body_Accelerometer_Magnitude_Standard_Deviation
###The average of the standard deviations of accelerometer measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 35: Time_Gravity_Accelerometer_Magnitude_Mean
###The average of the means of accelerometer measurements of a gravity measurement with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 36: Time_Gravity_Accelerometer_Magnitude_Standard_Deviation
###The average of the standard deviations of accelerometer measurements of a gravity measurement with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 37: Time_Body_Accelerometer_Jerk_Magnitude_Mean
###The average of the means of accelerometer measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 38: Time_Body_Accelerometer_Jerk_Magnitude_Standard_Deviation
###The average of the standard deviations of accelerometer measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 39: Time_Body_Gyroscope_Magnitude_Mean
###The average of the means of gyroscoptic measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 40: Time_Body_Gyroscope_Magnitude_Standard_Deviation
###The average of the standard deviations of gyroscoptic measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 41: Time_Body_Gyroscope_Jerk_Magnitude_Mean
###The average of the means of gyroscoptic measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 42: Time_Body_Gyroscope_Jerk_Magnitude_Standard_Deviation
###The average of the standard deviations of gyroscoptic measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 43: Frequency_Body_Accelerometer_Mean.X
###The average of the means of accelerometer measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 44: Frequency_Body_Accelerometer_Mean.Y
###The average of the means of accelerometer measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 45: Frequency_Body_Accelerometer_Mean.Z
###The average of the means of accelerometer measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 46: Frequency_Body_Accelerometer_Standard_Deviation.X
###The average of the standard deviations of accelerometer measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 47: Frequency_Body_Accelerometer_Standard_Deviation.Y
###The average of the standard deviations of accelerometer measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 48: Frequency_Body_Accelerometer_Standard_Deviation.Z
###The average of the standard deviations of accelerometer measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 49: Frequency_Body_Accelerometer_Jerk_Mean.X
###The average of the means of accelerometer measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 50: Frequency_Body_Accelerometer_Jerk_Mean.Y
###The average of the means of accelerometer measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 51: Frequency_Body_Accelerometer_Jerk_Mean.Z
###The average of the means of accelerometer measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 52: Frequency_Body_Accelerometer_Jerk_Standard_Deviation.X
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 53: Frequency_Body_Accelerometer_Jerk_Standard_Deviation.Y
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 54: Frequency_Body_Accelerometer_Jerk_Standard_Deviation.Z
###The average of the standard deviations of accelerometer measurements of a body containing jerk signals on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 55: Frequency_Body_Gyroscope_Mean.X
###The average of the means of gyroscoptic measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 56: Frequency_Body_Gyroscope_Mean.Y
###The average of the means of gyroscoptic measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 57: Frequency_Body_Gyroscope_Mean.Z
###The average of the means of gyroscoptic measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 58: Frequency_Body_Gyroscope_Standard_Deviation.X
###The average of the standard deviations of gyroscoptic measurements of a body on the X axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 59: Frequency_Body_Gyroscope_Standard_Deviation.Y
###The average of the standard deviations of gyroscoptic measurements of a body on the Y axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 60: Frequency_Body_Gyroscope_Standard_Deviation.Z
###The average of the standard deviations of gyroscoptic measurements of a body on the Z axis.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 61: Frequency_Body_Accelerometer_Magnitude_Mean
###The average of the means of accelerometer measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 62: Frequency_Body_Accelerometer_Magnitude_Standard_Deviation
###The average of the standard deviations of accelerometer measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 63: Frequency_Body_Accelerometer_Jerk_Magnitude_Mean
###The average of the means of accelerometer measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 64: Frequency_Body_Accelerometer_Jerk_Magnitude_Standard_Deviation
###The average of the standard deviations of accelerometer measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: Gravitation Units 'G'

###Variable 65: Frequency_Body_Gyroscope_Magnitude_Mean
###The average of the means of gyroscoptic measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 66: Frequency_Body_Gyroscope_Magnitude_Standard_Deviation
###The average of the standard deviations of gyroscoptic measurements of a body with the magnitude.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 67: Frequency_Body_Gyroscope_Jerk_Magnitude_Mean
###The average of the means of gyroscoptic measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

###Variable 68: Frequency_Body_Gyroscope_Jerk_Magnitude_Standard_Deviation
###The average of the standard deviations of gyroscoptic measurements of a body with the magnitude containing jerk signals.
Variable Class: int
Unique_Values: Features are normalized and bounded within [-1,1]
Units: radians/second

## Sources
Codebook template:  HYPERLINK "https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41" https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41
Project Description:  HYPERLINK "https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3/submissions" https://class.coursera.org/getdata-015/human_grading/view/courses/973502/assessments/3/submissions
Study Design:  HYPERLINK "http://www.icephd.org/sites/default/files/IWAAL2012.pdf" http://www.icephd.org/sites/default/files/IWAAL2012.pdf

## Index CodeBooks
##README.txt

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

##features_info.txt
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
