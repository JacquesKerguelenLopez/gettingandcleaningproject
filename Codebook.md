# Codebook

# Study design
Several tests were made with different subjects carrying a Samsung Galaxy II mobile phone. The mobile registered information from two
of its sensors,namely accelerometer and gyroscope. The data was recorded from a different sets of movement (activities) by the subjects (30 volunteers):
Walking, walking upstairs, walking downstairs, sitting, standing and laying.

This data was organized into different files:

1. features.txt: the names of 561 features registered by the mobile's sensors.
2. activity_labels.txt: the names and IDs of each of the activities.
3. X_train.txt: 7352 observations of the 561 features in training mode.
4. y_train.txt: The ID numbers of the activities corresponding to each line of X_train.txt.
5. subject_train.txt: The ID numbers of each of the volunteers that correspond to each line of X_train.txt 
6. X_test.txt: 2947 observations of the 561 features in test mode.
7. y_test.txt: The ID numbers of the activities corresponding to each line of X_test.txt
8. subject_test.txt: the ID numbers of each of the volunteers that correspond to each line of X_test.txt.

# Procedure
1. The datasets for training and testing mode were binded together adding information about activity name and ID of the volunteer performing the movements in each of the observations.
2. From this complete dataset, columns that have to do with mean and standard deviation were extracted and information about their corresponding
subject number and activity name were added.
3. Then, the format of the previous dataset was changed to present the information of the 561 organized according to combinations of activity names and subject numbers.
4. For each combination of activity name, subject number and certain feature, the average of the value of that feature was calculated. Creating an array of 3 dimensions.
5. That array was converted into narrow form to show the information in an organized manner.
6. The result was written to a text file which is shown in the Course Project result page.

# Final product description
This table has four columns:

1. Activity Name: Whether the subject was walking, walking upstairs, walking downstairs, sitting, standing or laying.
2. Subject Number: ID of the subject.
3. Variable: Feature in question.
4. Mean: Average of the value of certain feature corresponding to a certain combination of activity name and subject number.
