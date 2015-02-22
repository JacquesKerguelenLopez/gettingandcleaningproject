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
4. Mean: Average of the value of a feature corresponding to a certain combination of activity name and subject number.

# Feature Selection

A copy of the explanation of features is included here (from the original files) as I thought that was relevant to get a good grasp of the information:

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
