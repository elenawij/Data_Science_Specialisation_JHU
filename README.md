# Peer-graded Assignment: Getting and Cleaning Data Course Project

## Description of the project
*One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

*Here are the data for the project:
*https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Steps of the analysis (full details can be seen in the run_analysis.R):

1.READ DATASETS: read all the files from the given UCI HAR Dataset folder. assign sensible column names

2.Merges the training and the test sets to create one data set : combine column-wise training data sets, repeat the same operation fro test data sets, only after that merge two full data sets row-wise. Update the naming

3.Extracts only the measurements on the mean and standard deviation for each measurement: using dplyr package calculate mean and std for feature vectors, and then select only columns that contain 'mean' or 'std' words

4.Uses descriptive activity names to name the activities in the data set: matched coded activity labels to the activity names

5.Appropriately label the data set with descriptive variable names: the descriptive names were given at the step #1, just needed to clean up a bit

6.From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject: use group by to group by subject id and activity level, and then summarize using mean. Save the final datasets and variable names for Code book
