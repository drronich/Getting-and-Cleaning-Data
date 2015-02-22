# Getting and Cleaning Data Project

Repo contains three files:
- README.md - file which describes how the main script works
- CodeBook.md - file which describes variables of the output dataset
- run_analysis.R - main script which executes processing of data dataset2.txt

#Execution Guide
- set your Samsung data directory as your working directory
- run script file run_analysis.R
- result of execution is a new file dataset2.txt which represents a tidy data set with the average of each variable for each activity and each subject 

#Script main workflow
- prepares reference data such as Activity and Feature labels
- loads the test dataset
- loads the train dataset and merges it with the test one
- creates a tidy dataset with the average of each variable for each activity and each subject
- preserves it on disk as dataset2.txt
- returns it to output

#Aux script workflow - function load_data
- loads and binds data about subjects from the file subject_train.txt
- loads and binds data about activity from the file y_train.txt
- applies descriptive activity names to name the activities in the data set
- applies appropriately labels with descriptive variable names 
- loads and binds data about features from the file X_train.txt
- extracts only the measurements on the mean and standard deviation for each measurement. 
