library(plyr)
library(knitr)
library(markdown)

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
path <- getwd()
pathIn <- file.path(path, "UCI HAR Dataset")

## Read in training and test sets
X_test <- read.table(paste0(pathIn, "/test/X_test.txt"), colClass='numeric')
y_test <- read.table(paste0(pathIn, "/test/y_test.txt"), colClass='numeric')
sub_test <- read.table(paste0(pathIn, "/test/subject_test.txt"), colClass='numeric')
X_train <- read.table(paste0(pathIn, "/train/X_train.txt"), colClass='numeric')
y_train <- read.table(paste0(pathIn, "/train/y_train.txt"), colClass='numeric')
sub_train <- read.table(paste0(pathIn, "/train/subject_train.txt"), colClass='numeric')
features <- read.table(paste0(pathIn, "/features.txt"), colClass="character")
activities <- read.table(paste0(pathIn, "/activity_labels.txt"), colClass=c("integer","character"))

## Merge and extracts only the measurements on the mean and standard deviation for each measurement
mergedData <- rbind(X_test,X_train)
meanStdInds <- which( grepl("mean\\(\\)|std\\(\\)",features$V2) )
mergedData <- mergedData[, meanStdInds]

ylabel <- rbind(y_test,y_train)
subject <- rbind(sub_test,sub_train)
colnames(ylabel) <- c("yLabel")
colnames(subject) <- c("subject")
mergedData <- cbind(mergedData, ylabel, subject)

mergedData[,"subject"] <- as.factor(mergedData[,"subject"])
mergedData[,"yLabel"] <- as.factor(mergedData[,"yLabel"])

## Descriptive activity names for the activities in the data set
mergedData[,"yLabel"] <- mapvalues(mergedData[,"yLabel"],from=c("1","2","3","4","5","6"),to=activities[,2])

## Label the data set with descriptive variable names
colnames(mergedData) <- c((features$V2)[meanStdInds],'activity','subject')

## Creates a second tidy data set with the average of each variable
keeps <- (features$V2)[meanStdInds]
## for each subject
groupsBySub <- split(mergedData[,keeps],mergedData$subject)
meansBySub <- lapply(groupsBySub, colMeans)
## for each activity
groupsByAct <- split(mergedData[,keeps],mergedData$activity)
meansByAct <- lapply(groupsByAct, colMeans)

## create one tidy data set
meansBySub_sub <- names(meansBySub)
meansBySub_act <- rep(NA,length(meansBySub))
meansByAct_act <- names(meansByAct)
meansByAct_sub <- rep(NA,length(meansByAct))

dfBySub <- data.frame(matrix(unlist(meansBySub),nrow=length(meansBySub),byrow=T))
colnames(dfBySub) <- names(meansBySub[[1]])
dfBySub$subject <- meansBySub_sub
dfBySub$activity <- meansBySub_act

dfByAct <- data.frame(matrix(unlist(meansByAct),nrow=length(meansByAct),byrow=T))
colnames(dfByAct) <- names(meansByAct[[1]])
dfByAct$subject <- meansByAct_sub
dfByAct$activity <- meansByAct_act

dataset <- rbind(dfBySub,dfByAct)
write.table(dataset,"DataHumanActivityRecognition.txt",quote=FALSE, row.names=FALSE,sep="\t")

## make/update codebook
knit("makeCodebook.Rmd", output="codebook.md", encoding="ISO8859-1", quiet=TRUE)
markdownToHTML("codebook.md", "codebook.html")