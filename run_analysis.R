# Loads data from the given directory and creates a data frame with predefined structure.
#
#  Args:
#    directory - the directory which contains necessary files (X_test.txt, y_test.txt, subject_test.txt)
#    activities_labels - set of activity labels ordered by index
#    features_labels - set of feature labels ordered by index
#
#  Returns:
#    A complete data frame which contains only necessary data.
load_data <- function(directory, activities_labels, features_labels) {
    ## Binds data about subjects
    result <- read.csv(sprintf("%s/subject_%s.txt", directory, directory), header = FALSE,  colClasses="numeric", col.names="subject")
    
    ## Binds data about activities
    result <- cbind(result, read.csv(sprintf("%s/y_%s.txt", directory, directory), header = FALSE,  colClasses="factor", col.names="activity"))
    
    ## Uses descriptive activity names to name the activities in the data set
    levels(result[, "activity"]) = activities_labels
    
    ## Selects indices of the column which contains mean or standard deviation. 
    selected_indices <- sort(c(agrep("mean()", features_labels), agrep("std()", features_labels))) 
    selected_indices <- selected_indices 
    
    ## Appropriately labels the data set with descriptive variable names. 
    features_labels <- gsub("[\\(\\)]", "", features_labels)
    
    ## Binds data about features.
    result <- cbind(result, read.table(sprintf("%s/X_%s.txt", directory, directory), col.names=features_labels))
    
    ## Extracts only the measurements on the mean and standard deviation for each measurement. 
    result <- result[, c(1:2, selected_indices + 2)] # Shifts the indices by 2 because of new columns "subject" and "activity"
    
    result
}

##----------------
## Main Flow Start
##----------------

## Loads data with activity names
activity_labels <- read.table("activity_labels.txt",  header = FALSE,  col.names= c("index", "activity"))[,2]

## Loads data with feature names. 
feature_labels <- read.table("features.txt", header = FALSE, col.names= c("index", "feature"))[,2]

## Merges the training and the test sets to create one data set.
data <- load_data("test", activity_labels, feature_labels)  
data <- rbind(data, load_data("train", activity_labels, feature_labels))

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data2 <- ddply(data, .(subject, activity), function(df) {sapply(df, function(x){if (is.factor(x))levels(x)[head(x, 1)] else mean(x)})})

## Stores it
write.table(data2, "dataset2.txt", row.name=FALSE)

## Returns it
data2