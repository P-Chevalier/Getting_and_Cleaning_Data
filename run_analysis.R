# run_analysis.R

# Load packages needed by run_analysis.R
library(plyr)
library(data.table)

# Check to see if the current download directory exists - if not create the directory
if (!file.exists("./GetCleanData")) {
        dir.create("./GetCleanData")
}

# Download and unzip the course project data files (if needed)
if (!file.exists("./GetCleanData/UCI HAR Dataset")) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, destfile="./GetCleanData/dataset.zip", mode = "wb", method = "curl")
        unzip("./GetCleanData/dataset.zip", exdir = "./GetCleanData")
}

# Read in the X data sets (10299 rows (data points) containing 561 columns (measurements))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Read in the y data sets (6 activities)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

# Read in the subject data sets (30 subjects studied)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# Merge the test and training data sets
X_data <- rbind(X_test, X_train)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Read in the feature file (561 features/columns of X_test/X_train)
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(features) <- c("feature_id", "feature_name")

# Get the index of the means (33 of the 561 columns contain mean data)
mean_indices <- grep("\\-mean\\(\\)", features$feature_name)

# Get the index of the standard deviations (33 of the 561 columns contain std data)
standard_deviation_indices <- grep("\\-std\\(\\)", features$feature_name)

# Combine mean and std indices (66 columns)
mean_standard_deviation_indices <- c(mean_indices,standard_deviation_indices)

# Sort the indices
sorted_mean_standard_deviation_indices <- sort.int(mean_std_indices)

# Filter the X_data to contain only the 66 features (33 mean and 33 std)
X_data <- X_data[, sorted_mean_standard_deviation_indices]

# Substitute 'mean()' for "Mean_Value" - according to features_info.txt
mean_value <- gsub("mean\\(\\)", "Mean\\_Value", (features[sorted_mean_standard_deviation_indices, 2]))

# Substitute 'std()' for "Standard_Deaviation" - according to features_info.txt
m_and_s <- gsub("std\\(\\)", "Stardard_Deviation", mean_value)

# Rename the X_data columns to the feature name
colnames(X_data) <- c(m_and_s)

# Read in the activity file (6 activities relating to the y_data)
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

# Rename the activity columns 
colnames(activity) <- c("Activity_id", "Activity_name")

# Use the Activity_labels instead of activity id
y_data[, 1] <- activity[y_data[,1], 2]

# Rename the y_data column
colnames(y_data) <- "Activity"

# Rename the subject_data column
colnames(subject_data) <- "Subject"

# Combine subjects (1-30), Activities (6 Activities (eg. WALKING)), and data points (66 mean/std))
tidy_data_set <- cbind(subject_data, y_data, X_data)

# Count the number of columns in the tidy data set
tidy_data_set_column_count <- ncol(tidy_data_set)

# Subset the data removing the Subject and Activity from the tidy_data_set
tds <- tidy_data_set[, 3:tidy_data_set_column_count]

# Use aggregate to get the averages
tidy_data_set_averages <- aggregate(tds, list(tidy_data_set$Subject, tidy_data_set$Activity), mean)

# Rename the first column Subject
colnames(tidy_data_set_averages)[1] <- "Subject"

# Rename the second column "Activity"
colnames(tidy_data_set_averages)[2] <- "Activity"

# Write the tidy_data_set_averages to a txt file
write.table(tidy_data_set_averages, "tidy_data_set_average.txt", row.names = FALSE)