# Loads library reshape2
        library(reshape2)
# reads the X_test.txt and X_train.txt files into X_test and X_train
        X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
        X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
# Binds X_train and X_test into the joinedDatadet object
        joinedDataset <- rbind(X_train,X_test)
# Reads the features.txt file (which contains the names of the variables) into features
        features <- read.table("./UCI HAR Dataset/features.txt")
# Deletes the redundant column for row names in the features data frame
        features <- features[,-1]
# Coerces the features' elements to characters
        features <- as.character(features)
# Establishes the names for the columns of joinedDataset as the elements in the 
# features vector
        colnames(joinedDataset) <- features
# In the extractedDataset (introduced in the next instruction) there is an 
# extraction of the columns of joinedDataset that have the string "std()" and 
# "mean()" in their column name. It also extracts the names of the columns of 
# the extractedDataset and assigns them to the extractedFeatures object 
        extractedDataset <- joinedDataset[,grep("(mean|std)\\(\\)",colnames(joinedDataset))]
        extractedFeatures <- colnames(extractedDataset)
# Reads in the subject numbers into subject_test and subject_train
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
# Joins subject_test and subject_train
        subject <- rbind(subject_train,subject_test)
        colnames(subject) <- c("Subject Number")
# Reads in the activity numbers for train and test into y_test and y_train
        y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
        y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
# Joins y_train and y_test into yjoinedDataset
        yjoinedDataset <- rbind(y_train,y_test)
# Reads in activity names
        activityNames <- read.table("./UCI HAR Dataset/activity_labels.txt")
# Adds the activity names to the activity number Data Frame (yjoinedDataset)
        for (i in 1:nrow(yjoinedDataset)) {
                yjoinedDataset[i,2] <- activityNames[yjoinedDataset[i,1],2]  
        }
# Creates a Data Frame with the activity names; each row corresponding to each 
# observation of the extractedDataset. Assigns a column name = "Activity Name"
        activityName <- yjoinedDataset[,2]
        activityName <- as.data.frame(activityName)
        colnames(activityName) <- c("Activity Name")
# Binds the activity names, subject numbers with the mean() and std() data frame
# in the extractedDataset1 object
        extractedDataset1 <- cbind(activityName,subject,extractedDataset)
# Create a narrow format data frame from extractedDataset1 with "Activity Name" 
# and "Subject Name" as ID variables and the features as measured variables
        narrowDataset <- melt(extractedDataset1, id=c("Activity Name", "Subject Number"), measure.vars = extractedFeatures)
# Creates an array of the averages of each of the variables for each combination
# of Activity Name and Subject Number
        indexCols <- list(narrowDataset[,1],narrowDataset[,2],narrowDataset[,3])
        averages <- tapply(narrowDataset[,4], indexCols, mean)
# Melt the array "averages" into narrow format in the moltenAverages object
        moltenAverages <- melt(averages)
# Change moltenaverages Column Names
        colNames <- c("Activity Name", "Subject Number", "Variable", "Mean")
        colnames(moltenAverages) <- colNames
# Writes the product of the exercise (moltenAverages) to a text file
        write.table(moltenAverages,"./data/averages.txt",row.names=FALSE)



