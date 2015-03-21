Getting and Cleaning Data Project


Submission of course project for Coursera Getting and Cleaning Data course.

Source files downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzip source files and one will need to update the working directory in the R file (run_analysis.r)

Project Summary

1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts.
Data Set Information


Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

After setting the source directory for the files, read into tables the data located in

Step 1 Merges the training and the test sets to create one data set.

features.txt
activity_labels.txt
subject_train.txt
x_train.txt
y_train.txt
subject_test.txt
x_test.txt
y_test.txt



Step 2 Extract only the measurements on the mean and standard deviation for each measurement

Create a logcal vector that contains TRUE values for Features including "mean" and "std" columns.  Subset this data to keep only the necessary columns.

Step 3 Use descriptive activity names to name the activities in the data set

Update X data column names from Featrues.txt
Update Y data column names from Activity_Labels.txt


Step 4 Appropriately label the data set with descriptive activity names.

Assign column names with Subject and Activity and merge to create one data set.


Step 5 Create a second, independent tidy data set with the average of each variable for each activity and each subject.

Create a data set with the average of each veriable for each activity and subject in file "final_data_averages.txt"