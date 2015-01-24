library(dplyr)

# Reading
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") # 7352 x 561
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt") # 7352 x 1
SubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt") # 7352 x 1

Xtest <- read.table("UCI HAR Dataset/test/X_test.txt") # 2947 x 561
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt") # 2947 x 1
SubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt") # 2947 x 1

Features <- read.table("UCI HAR Dataset/features.txt") # 561 x 2
Activities <- read.table("UCI HAR Dataset/activity_labels.txt") # 6 x 2

# Cleaning and merging
colnames(Xtrain) <- Features$V2
colnames(Xtest) <- Features$V2

colnames(SubjectTrain) <- "Subject"
colnames(Ytrain) <- "Activity"
Ytrain$Activity <- factor(Ytrain$Activity, labels=Activities$V2)
ATrain <- bind_cols(SubjectTrain, Ytrain, Xtrain)

colnames(SubjectTest) <- "Subject"
colnames(Ytest) <- "Activity"
Ytest$Activity <- factor(Ytest$Activity, labels=Activities$V2)
ATest <- bind_cols(SubjectTest, Ytest, Xtest)

All <- bind_rows(ATrain, ATest) %>%
  tbl_df() %>%
  select(Subject, Activity, contains("std()"), contains("mean()"))

# Writing
write.table(All, file = "UCI_HAR_Dataset_Cleaned.txt", row.name=FALSE)
