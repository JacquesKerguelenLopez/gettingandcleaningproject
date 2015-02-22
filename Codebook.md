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

# Final product description
averages.txt is the file produced by run_analysis.R and has 4 columns which are described below: 

1. Activity Name: Whether the subject was walking, walking upstairs, walking downstairs, sitting, standing or laying.
2. Subject Number: ID of the subject.
3. Variable: Feature in question.
4. Mean: Average of the value of certain feature corresponding to a certain combination of activity name and subject number.
