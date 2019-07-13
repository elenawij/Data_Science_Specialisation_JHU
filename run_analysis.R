#_____________________________________________________________________________________________________________________________
#1.READ DATASETS
setwd('/Users/ele/Dropbox/TDS/COURSES/Data_Science_Specialisation_JHU/Getting and Cleaning Data/UCI HAR Dataset')


#features
features_names<-read.table('features.txt', sep=' ')
head(features_names)

#train
X_train<-read.table('./train/X_train.txt', header=F, sep="")
colnames(X_train)<-features_names[,2]
head(X_train)
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
colnames(X_test)<-features_names[,2]
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
#2.Merges the training and the test sets to create one data set

object_names<-ls()


tr_obj<-object_names[grepl('train', object_names)]
tr_full<-data.frame(mget(tr_obj))
str(tr_full)

te_obj<-object_names[grepl('test', object_names)]
te_full<-data.frame(mget(te_obj))
str(te_full)

names(tr_full)<-gsub('_train', '', names(tr_full))
names(te_full)<-gsub('_test', '', names(tr_full))

dataset_full<-rbind(tr_full, te_full)
tail(names(dataset_full))
head(names(dataset_full))

#clean the naming after rbind
names(dataset_full)<-gsub('^[a-zA-Z_]+\\.','', colnames(dataset_full))
tail(names(dataset_full))
head(names(dataset_full))


#_____________________________________________________________________________________________________________________________
#3.Extracts only the measurements on the mean and standard deviation for each measurement.
library(dplyr)
library(matrixStats)
dataset_full<-dataset_full %>% 
  mutate(total_acceleration_x_mean=rowMeans(select(.,starts_with('total_acceleration_x_')), na.rm=T), 
         total_acceleration_y_mean=rowMeans(select(.,starts_with('total_acceleration_y_')), na.rm=T),
         total_acceleration_z_mean=rowMeans(select(.,starts_with('total_acceleration_z_')), na.rm=T),
         body_acceleration_x_mean=rowMeans(select(.,starts_with('body_acceleration_x_')), na.rm=T), 
         body_acceleration_y_mean=rowMeans(select(.,starts_with('body_acceleration_y_')), na.rm=T),
         body_acceleration_z_mean=rowMeans(select(.,starts_with('body_acceleration_z_')), na.rm=T),
         velocity_gyroscope_x_mean=rowMeans(select(.,starts_with('velocity_gyroscope_x_')), na.rm=T), 
         velocity_gyroscope_y_mean=rowMeans(select(.,starts_with('velocity_gyroscope_y_')), na.rm=T),
         velocity_gyroscope_z_mean=rowMeans(select(.,starts_with('velocity_gyroscope_z_')), na.rm=T),
         total_acceleration_x_std=rowSds(as.matrix(select(.,starts_with('total_acceleration_x_'))), na.rm=T), 
         total_acceleration_y_std=rowSds(as.matrix(select(.,starts_with('total_acceleration_y_'))), na.rm=T),
         total_acceleration_z_std=rowSds(as.matrix(select(.,starts_with('total_acceleration_z_'))), na.rm=T),
         body_acceleration_x_std=rowSds(as.matrix(select(.,starts_with('body_acceleration_x_'))), na.rm=T),
         body_acceleration_y_std=rowSds(as.matrix(select(.,starts_with('body_acceleration_y_'))), na.rm=T),
         body_acceleration_z_std=rowSds(as.matrix(select(.,starts_with('body_acceleration_z_'))), na.rm=T),
         velocity_gyroscope_x_std=rowSds(as.matrix(select(.,starts_with('velocity_gyroscope_x_'))), na.rm=T),
         velocity_gyroscope_y_std=rowSds(as.matrix(select(.,starts_with('velocity_gyroscope_y_'))), na.rm=T),
         velocity_gyroscope_z_std=rowSds(as.matrix(select(.,starts_with('velocity_gyroscope_z_'))), na.rm=T))

rowMeans(select(.,starts_with('total_acceleration_x_')), na.rm=T)


names_df<-names(dataset_full)
columns_to_leave<-c('subject_id', 'activity_label', names_df[grepl('mean|std', tolower(names_df))])
dataset_full_mean_sd<-dataset_full %>% 
  select(columns_to_leave)

str(dataset_full_mean_sd)

#_____________________________________________________________________________________________________________________________
#4. Uses descriptive activity names to name the activities in the data set
activities<-c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
dataset_full_mean_sd$activity_label<-as.factor(dataset_full_mean_sd$activity_label)
dataset_full_mean_sd$activity_label<-mapvalues(dataset_full_mean_sd$activity_label,levels(dataset_full_mean_sd$activity_label), activities)
head(dataset_full_mean_sd$activity_label,100)


#_____________________________________________________________________________________________________________________________
# 5.Appropriately label the data set with descriptive variable names.

#descriptive names were created at the reading files step, just need to clean a bit

colnames(dataset_full_mean_sd)<-gsub('...', '_', colnames(dataset_full_mean_sd), fixed=T)
colnames(dataset_full_mean_sd)<-gsub('..', '_', colnames(dataset_full_mean_sd), fixed=T)

#test names
sample(names(dataset_full_mean_sd), 100) 
# [1] "tBodyAcc.mean_Z"                  "velocity_gyroscope_z_mean"        "tBodyGyro.std_Y"                  "tGravityAcc.std_Y"                "tBodyAcc.mean_Y"                 
# [6] "tGravityAcc.std_X"                "angle.X.gravityMean."             "tBodyAccJerk.mean_Z"              "fBodyAcc.meanFreq_Z"              "tBodyAcc.mean_X"                 
# [11] "fBodyBodyAccJerkMag.std.."        "fBodyAccJerk.meanFreq_Z"          "fBodyGyro.mean_X"                 "velocity_gyroscope_y_mean"        "tBodyAccJerk.std_Z"              
# [16] "tGravityAccMag.std.."             "tBodyGyroJerk.std_X"              "fBodyBodyGyroMag.meanFreq.."      "tBodyAccJerk.mean_Y"              "tBodyAccJerk.mean_X"             
# [21] "total_acceleration_y_mean"        "fBodyBodyAccJerkMag.mean.."       "total_acceleration_x_mean"        "fBodyAccJerk.mean_X"              "fBodyAccJerk.std_Z"              
# [26] "fBodyAcc.mean_X"                  "fBodyAcc.std_X"                   "velocity_gyroscope_y_std"         "tBodyGyroJerk.std_Z"              "fBodyGyro.std_Y"                 
# [31] "fBodyGyro.std_X"                  "fBodyGyro.meanFreq_Y"             "tBodyAccJerk.std_X"               "fBodyBodyGyroJerkMag.mean.."      "total_acceleration_y_std"  


#_____________________________________________________________________________________________________________________________
#5.From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
library(tidyr)
#names(dataset_full_mean_sd)[sapply(dataset_full_mean_sd, class)!='numeric']

head(names(dataset_full_mean_sd))
tail(names(dataset_full_mean_sd))
dataset_full_final<-dataset_full_mean_sd %>% 
  group_by(subject_id, activity_label) %>%
  summarise_all(list(avg=~mean(.))) %>%
  gather(metric_name, average_value,  -subject_id, -activity_label)
  

str(dataset_full_final)
colnames(dataset_full_final)

write.table(dataset_full_final, 'dataset_full_final.txt', row.name=FALSE)
write.table(colnames(dataset_full_final), 'CODEBOOK.txt', row.name=FALSE, col.names = F)


