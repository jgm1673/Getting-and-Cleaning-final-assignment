## using a dataset acknowledgement:
# Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## read in the key files - from the
#perspective of running this code in the directory where UCI dataset is copied

#features file
        featdf<-read.table("UCI HAR Dataset/features.txt")
   
#read files from the subdirectory train
        traindf<-read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
        subtraindf<-read.table("UCI HAR Dataset/train/subject_train.txt")
        ytraindf<-read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE)
#read files from the subdirectory test
        testdf<-read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
        subtestdf<-read.table("UCI HAR Dataset/test/subject_test.txt")
        ytestdf<-read.csv("UCI HAR Dataset/test/y_test.txt",  header = FALSE)
 
        
#Assignement step 1: Merges the training and the test sets to create one data set               
# merge files starting with train 
        #step 1.1 base file is traindf to which activity is added as a column 
        #with data found in ytraindf.txt
        bigtraindf<-cbind(ytraindf, traindf)
        
        #step 1.2 add in subtraindf, containing the subject id's
        bigtraindf<-cbind(subtraindf, bigtraindf)
        #now I have a 7352 x 563 data frame.

        #step 1.3 need to do the same with the test folder, so both will have 563 cols
        bigtestdf<-cbind(ytestdf, testdf)
        bigtestdf<-cbind(subtestdf, bigtestdf)
        #now I have a 2947 x 563 data frame, 
        #step 1.4 row-bind the two "big" dataframes
        hugedf<-rbind(bigtraindf, bigtestdf)  #dims 10299 x 563
        
        #put some useful column names on hugedf
        namevec<-c("subjectid", "activity", as.character(featdf$V2))
        #add them to the columns
        colnames(hugedf)<-namevec
#step 2 Extracts only the measurements on the mean and standard deviation for each measurement.
        #using grep to get the indexes of the columns
        index<-grep("[Mm]ean|[Ss]td", namevec)
        # add in first and second columns
        index<-c(1, 2, index)
        #subset data frame on index
        seldf<-hugedf[index]
        
#step 3 Uses descriptive activity names to name the activities 
        #in the data set
        #the following is not as elegant use of R, but works
        #make a temporary char vector with the column of numbered activities
        newvec<-as.character(seldf$activity)  
        
        #transform the numbers into appropriate character strings in a second
        #temporary vector, removed the underscores, I checked the correct
        #numbers of entries of each level are created
        new1vec<-ifelse(newvec=="1", "WALKING", 
                        ifelse(newvec=="2", "WALKINGUP", 
                        ifelse(newvec=="3", "WALKINGDOWN", 
                        ifelse(newvec=="4", "SITTING", 
                        ifelse(newvec=="5", "STANDING", "LAYING")))))
        
        #need to put this vector/column on the data frame
        seldf<-cbind(new1vec, seldf)
        
#step 4 Appropriately labels the data set with descriptive variable names:
        # per lecture notes: lowercase, descriptive and not duplicate
        # no underscores, dots or white space, characters should be factors 
        # 
        #  therefore change to make lower case characters is required
        # also, removing all punctuation, because colname with parens will 
        #not work in dplyr
        # rename the new1vec column which is the factor activity
        # also tidy up the order of the columns, remove the old activity numeric column
        
        #fix colnames first because then we can use dplyr 
        namevec<-names(seldf)
        namevec<-tolower(namevec)  #lower case
        library(stringr)
        namevec<-str_replace_all(namevec, "[[:punct:]]", "")
        namevec[1]<-"activityname"
        colnames(seldf)<-namevec
        
        # now select the columns
        library(dplyr)
        seldf<-select(seldf, -activity)
        
#step 5 From the data set in step 4, creates a second, independent tidy 
        #data set with the average of each variable for each activity and 
        #each subject.
        #so I want to group by 6 activities and 30 subjects = 180 possibilities
        selgroup<-group_by(seldf, subjectid, activityname)
        #and calculate mean of the measurement columns
        finaldf<-summarize_each(selgroup, funs(mean))
        write.table(finaldf, "tidyset.txt", row.names=FALSE)