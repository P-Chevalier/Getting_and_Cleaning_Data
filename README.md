# How the script works:
##run_analysis.R  
  
## The run_analysis.R script performs the following steps:

###Load table package needed by run_analysis.R  
###Check to see if the all the necessary files exist  
###Read in the X data sets (10299 rows (data points) containing 561 columns (measurements))  
###Read in the y data sets (6 activities)  
###Read in the subject data sets (30 subjects studied)  
  
## Merge the training and test sets to create one data set  
## Extract only the measurements of the mean and standard deviations  
  
###Read in the feature file (561 features/columns of X_test/X_train)  
###Get the index of the means (33 of the 561 columns contain mean data)  
###NOTE: mean(): Mean value was defined in the features_info.txt  
###Get the index of the standard deviations (33 of the 561 columns contain std data)  
###NOTE: std(): Standard deviation was defined in the features_info.txt  
###Combine mean and std indices (66 columns)  
###Sort the indices  
###Filter the X_data to contain only the 66 features (33 mean and 33 std)  
  
## Appropriately label the data set with descriptive variable names  
## These labels are descriptive because they substitute the short-hand varible currently provided and expands the name with their long-hand names (e.g. 't' is short-hand for 'time').  

###Rename the X_data columns to more human readable names  

###Read in the activity file (6 activities relating to the y_data)  
  
## Use descriptive activity names to name the activities in the data set  
  
###Rename the activity columns   
###Use the Activity_labels instead of activity id  
###Rename the y_data column  
###Rename the subject_data column  
###Combine subjects (1-30), Activities (6 Activities (eg. WALKING)), and data points (66 mean/std))  
###Count the number of columns in the tidy data set  
###Subset the data removing the Subject and Activity from the tidy_data_set  

## Create a second independent tidy data set with the average of each Variable for each activity and each subject.  

###Use aggregate to get the averages  
###Rename the first column Subject  
###Rename the second column "Activity"  
###Write the tidy_data_set_averages to a txt file

## To examine the tidy_data_set_averages.txt file in R:  
### 1)	tidy_data <- read.table("tidy_data_set_averages.txt", header = TRUE)  
### 2)	View(tidy_data)  

## Conclusion:  
## The tidy_data_set_average.txt is tidy because:  
### 1)  Each variable is in one column  
### 2)  Each observation of that variable is in a different row  
### 3)  A header row is at the top of the table with the variable names
