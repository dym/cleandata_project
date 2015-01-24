# Cleaning the data: The story of Data and Script :metal:

## The Algorithm to clean data

* Read *features.txt* file to 561x2 table
* Read *activity_labels.txt* to 6x2 table
* Construct train data set:
  * Read *X_train.txt* into 7352x561 table
  * Read *Y_train.txt* into 7352x1 table
  * Read *subject_train.txt* into 7352x1 table
  * Rename *X_train* table colunm names with ones from *features.txt*
  * Rename *Subject_train* table only one column name to "Subject"
  * Rename *Ytrain* table only one column name to "Activity"
  * Change values in *Ytrain* table to factors from *Activity* table
  * Join columns from *SubjectTrain*, *Ytrain* and *Xtrain* tables into one table *ATrain*
* Construct test data set:
  * Read *X_test.txt* into 2947x561 table
  * Read *Y_test.txt* into 2947x1 table
  * Read *subject_test.txt* into 2947x1 table
  * Rename *X_test* table colunm names with ones from *features.txt*
  * Rename *Subject_test* table only one column name to "Subject"
  * Rename *Ytest* table only one column name to "Activity"
  * Change values in *Ytest* table to factors from *Activity* table
  * Join columns from *SubjectTest*, *Ytest* and *Xtest* tables into one table *ATest*
* Join rows from tables *ATrain* and *ATest* into one
* Select Subject and Activity columns + columns that contain "std()" or "mean()" function calls

## Description of the data that could be found in UCI_HAR_Dataset_Cleaned.txt

`-XYZ` is used to denote 3-axial signals in the X, Y and Z directions:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

## Column names for the cleaned data from the UCI_HAR_Dataset_Cleaned.txt

### Test details

* Subject
* Activity

### Measurements

* tBodyAcc-std()-X
* tBodyAcc-std()-Y           
* tBodyAcc-std()-Z
* tGravityAcc-std()-X        
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z        
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-std()
* tGravityAccMag-std()
* tBodyAccJerkMag-std()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-std()
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyAccMag-mean()
* tGravityAccMag-mean()
* tBodyAccJerkMag-mean()
* tBodyGyroMag-mean()
* tBodyGyroJerkMag-mean()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z  
* fBodyAccMag-mean()
* fBodyBodyAccJerkMag-mean() 
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroJerkMag-mean()

