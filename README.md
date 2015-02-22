
# Project about loading, manipulating and summarising information from datasets regarding sensor information from Samsung Galaxy II 

This project is done as part of the course Getting and Cleaning Data from Johns Hopkins University and is based on the Human Activity Recognition Using Smartphones Data Set Experiment http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To carry out the operation set out by the program run_analysis.R there are a few conditions that have to be met:

1. Download the complete set of data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip the files in R working directory.

Then you can run the run_analysis.R file to perform the analysis.

The output of the data will be in the file averages.txt in the working directory.

# Program (run_analysis.R) algorithm
Note: check out the Codebook for explanation of the different datasets used in the algorithm.

1. The datasets for training and testing mode were binded together adding information about activity name and ID of the volunteer performing the movements in each of the observations.
2. From this complete dataset, columns that have to do with mean and standard deviation were extracted.
3. Then, the format of the previous dataset was changed to present the information of the 561 features organized according to combinations of activity names and subject numbers.
4. For each combination of activity name, subject number and certain feature, the average of the value of that feature was calculated, creating an array of 3 dimensions.
5. That array was converted into narrow form to show the information in an organized manner.
6. The result was written to a text file which is shown in the Course Project result page.

