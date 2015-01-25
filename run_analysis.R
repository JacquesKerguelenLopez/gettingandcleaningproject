# reads the X_test.txt and X_train.txt files into X_test and X_train
        X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
# Read the activity labels for training and test information in y_test and y_train
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
# Combines y_train and y_test into y
        y <- rbind(y_train,y_test)
# Merges X_train and X_test
        joinedDataset <- rbind(X_train,X_test)
# Adds the activity labels to the joinedDataset
        joinedDataset$activity <- y
# reads the features.txt file into features
        features <- read.table("./UCI HAR Dataset/features.txt")
# Deletes a redundant index column in features data frame
        features <- features[,-1]
# Coerces the features' elements to characters
        features <- as.character(features)
# Adds the element "activity" to the last column of features
        features <- c(features,"activitylabel")
# Establishes the names for the columns of joinedDataset as the elements in the 
# features vector
        colnames(joinedDataset) <- features
# In the extractedDataset there is an extraction of the columns of joinedDataset
# that have the string "std()" and "mean()" in their column name
        extractedDataset <- joinedDataset[,grep("mean|std\\(\\)",colnames(joinedDataset))]
        extractedDataset <- extractedDataset[,-grep("meanFreq",colnames(extractedDataset))]
# Adds the activitylabel columns at the end of extractedDataset
        extractedDataset$activitylabel <- joinedDataset$activitylabel

activityLabelsAndNames <- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
for (i in 1:nrow(extractedDataset)) {
        print(as.integer(extractedDataset[i,67]),2)
        # extractedDataset[i,67] <- activityLabelsAndNames[as.integer(extractedDataset[i,67]),2]
}       