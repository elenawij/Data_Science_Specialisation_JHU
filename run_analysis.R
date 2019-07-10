#READ DATASETS
setwd('/Users/elena.zadnepranets/Dropbox/TDS/COURSES/Data_Science_Specialisation_JHU/Getting and Cleaning Data/UCI HAR Dataset')

#train
X_train<-read.table('./train/X_train.txt', header=F, sep="")
colnames(X_train)<-c(paste0('feature_time_frequency_', seq(1:ncol(X_train))))
dim(X_train)

subject_train<-read.table('./train/subject_train.txt', header=F, sep="")
colnames(subject_train)<-c('subject_id')
table(subject_train)

y_train<-read.table('./train/y_train.txt', header=F, sep="")
colnames(y_train)<-c('activity_label')
table(y_train)

body_gyro_z_train<-read.table('./train/Inertial Signals/body_gyro_z_train.txt', header=F, sep="")
colnames(body_gyro_z_train)<-c(paste0('velocity_gyroscope_z_', seq(1:ncol(body_gyro_z_train))))
dim(body_gyro_z_train)

body_gyro_y_train<-read.table('./train/Inertial Signals/body_gyro_y_train.txt', header=F, sep="")
colnames(body_gyro_y_train)<-c(paste0('velocity_gyroscope_y_', seq(1:ncol(body_gyro_y_train))))
dim(body_gyro_y_train)

body_gyro_x_train<-read.table('./train/Inertial Signals/body_gyro_x_train.txt', header=F, sep="")
colnames(body_gyro_x_train)<-c(paste0('velocity_gyroscope_x_', seq(1:ncol(body_gyro_x_train))))
dim(body_gyro_x_train)

total_acc_z_train<-read.table('./train/Inertial Signals/total_acc_z_train.txt', header=F, sep="")
colnames(total_acc_z_train)<-c(paste0('total_acceleration_z_', seq(1:ncol(total_acc_z_train))))
dim(total_acc_z_train)

total_acc_y_train<-read.table('./train/Inertial Signals/total_acc_y_train.txt', header=F, sep="")
colnames(total_acc_y_train)<-c(paste0('total_acceleration_y_', seq(1:ncol(total_acc_y_train))))
dim(total_acc_y_train)

total_acc_x_train<-read.table('./train/Inertial Signals/total_acc_x_train.txt', header=F, sep="")
colnames(total_acc_x_train)<-c(paste0('total_acceleration_x_', seq(1:ncol(total_acc_x_train))))
dim(total_acc_x_train)

body_acc_z_train<-read.table('./train/Inertial Signals/body_acc_z_train.txt', header=F, sep="")
colnames(body_acc_z_train)<-c(paste0('body_acceleration_z_', seq(1:ncol(body_acc_z_train))))
dim(body_acc_z_train)

body_acc_y_train<-read.table('./train/Inertial Signals/body_acc_y_train.txt', header=F, sep="")
colnames(body_acc_y_train)<-c(paste0('body_acceleration_y_', seq(1:ncol(body_acc_y_train))))
dim(body_acc_y_train)

body_acc_x_train<-read.table('./train/Inertial Signals/body_acc_x_train.txt', header=F, sep="")
colnames(body_acc_x_train)<-c(paste0('body_acceleration_x_', seq(1:ncol(body_acc_x_train))))
dim(body_acc_x_train)

#test
X_test<-read.table('./test/X_test.txt', header=F, sep="")
colnames(X_test)<-c(paste0('feature_time_frequency_', seq(1:ncol(X_test))))
dim(X_test)

subject_test<-read.table('./test/subject_test.txt', header=F, sep="")
colnames(subject_test)<-c('subject_id')
table(subject_test)

y_test<-read.table('./test/y_test.txt', header=F, sep="")
colnames(y_test)<-c('activity_label')
table(y_test)

body_gyro_z_test<-read.table('./test/Inertial Signals/body_gyro_z_test.txt', header=F, sep="")
colnames(body_gyro_z_test)<-c(paste0('velocity_gyroscope_z_', seq(1:ncol(body_gyro_z_test))))
dim(body_gyro_z_test)

body_gyro_y_test<-read.table('./test/Inertial Signals/body_gyro_y_test.txt', header=F, sep="")
colnames(body_gyro_y_test)<-c(paste0('velocity_gyroscope_y_', seq(1:ncol(body_gyro_y_test))))
dim(body_gyro_y_test)

body_gyro_x_test<-read.table('./test/Inertial Signals/body_gyro_x_test.txt', header=F, sep="")
colnames(body_gyro_x_test)<-c(paste0('velocity_gyroscope_x_', seq(1:ncol(body_gyro_x_test))))
dim(body_gyro_x_test)

total_acc_z_test<-read.table('./test/Inertial Signals/total_acc_z_test.txt', header=F, sep="")
colnames(total_acc_z_test)<-c(paste0('total_acceleration_z_', seq(1:ncol(total_acc_z_test))))
dim(total_acc_z_test)

total_acc_y_test<-read.table('./test/Inertial Signals/total_acc_y_test.txt', header=F, sep="")
colnames(total_acc_y_test)<-c(paste0('total_acceleration_y_', seq(1:ncol(total_acc_y_test))))
dim(total_acc_y_test)

total_acc_x_test<-read.table('./test/Inertial Signals/total_acc_x_test.txt', header=F, sep="")
colnames(total_acc_x_test)<-c(paste0('total_acceleration_x_', seq(1:ncol(total_acc_x_test))))
dim(total_acc_x_test)

body_acc_z_test<-read.table('./test/Inertial Signals/body_acc_z_test.txt', header=F, sep="")
colnames(body_acc_z_test)<-c(paste0('body_acceleration_z_', seq(1:ncol(body_acc_z_test))))
dim(body_acc_z_test)

body_acc_y_test<-read.table('./test/Inertial Signals/body_acc_y_test.txt', header=F, sep="")
colnames(body_acc_y_test)<-c(paste0('body_acceleration_y_', seq(1:ncol(body_acc_y_test))))
dim(body_acc_y_test)

body_acc_x_test<-read.table('./test/Inertial Signals/body_acc_x_test.txt', header=F, sep="")
colnames(body_acc_x_test)<-c(paste0('body_acceleration_x_', seq(1:ncol(body_acc_x_test))))
dim(body_acc_x_test)


#_____________________________________________________________________________________________________________________________
#1.Merges the training and the test sets to create one data set

object_names<-ls()


tr_obj<-object_names[grepl('train', object_names)]
tr_full<-data.frame(mget(tr_obj))
str(tr_full)

te_obj<-object_names[grepl('test', object_names)]
te_full<-data.frame(mget(te_obj))
str(te_full)

names(tr_full)<-gsub('_train', '', names(tr_full))
names(te_full)<-gsub('_test', '', names(tr_full))
names(tr_full)
names(te_full)
dataset_full<-rbind(tr_full, te_full)

#_____________________________________________________________________________________________________________________________
#2.Extracts only the measurements on the mean and standard deviation for each measurement.

mean_stdev<-summarise_if(dataset_full, is.numeric, list(avg=~mean(.),stdev=~sd(.)))

# mean<-sapply(dataset_full, mean)
# st_dev<-sapply(dataset_full, sd)

#_____________________________________________________________________________________________________________________________
#3. Uses descriptive activity names to name the activities in the data set
library(plyr)
activities<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
dataset_full$activity_label<-as.factor(dataset_full$activity_label)
dataset_full$activity_label<-mapvalues(temp, levels(dataset_full$activity_label), activities)
head(dataset_full$activity_label,100)


#_____________________________________________________________________________________________________________________________
# 4.Appropriately labels the data set with descriptive variable names.

#descriptive names were created at the reading files step, 
#now just need to clean names after merging the train and test datasets

names(dataset_full)<-gsub('.+\\.','', colnames(dataset_full))

#test names
sample(names(dataset_full), 100) 
# [1] "velocity_gyroscope_z_10"    "total_acceleration_x_1"     "body_acceleration_x_36"    
# [4] "velocity_gyroscope_z_100"   "total_acceleration_y_60"    "feature_time_frequency_330"
# [7] "total_acceleration_z_29"    "feature_time_frequency_37"  "velocity_gyroscope_y_56"   
# [10] "body_acceleration_y_40"     "body_acceleration_z_61"     "feature_time_frequency_485"
# [13] "total_acceleration_z_115"   "body_acceleration_z_57"     "feature_time_frequency_382"
# [16] "total_acceleration_z_39"    "velocity_gyroscope_x_30"    "body_acceleration_y_112"   
# [19] "body_acceleration_z_35"     "body_acceleration_z_114"    "feature_time_frequency_326"
# [22] "total_acceleration_z_124"   "feature_time_frequency_554" "total_acceleration_x_116" 


#_____________________________________________________________________________________________________________________________
#5.From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
library(tidyr)

names(dataset_full)[sapply(dataset_full, class)!='numeric']
dataset_full2<-dataset_full %>% 
  group_by(subject_id, activity_label) %>%
  summarise_all(list(avg=~mean(.)))

str(dataset_full2)


