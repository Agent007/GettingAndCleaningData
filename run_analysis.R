X_train = read.table('UCI HAR Dataset/train/X_train.txt')
X_test = read.table('UCI HAR Dataset/test/X_test.txt')
X = rbind(X_train, X_test)
features = read.table('UCI HAR Dataset/features.txt')
names(X) = features[,2]
X_tidy = X[grep('-mean\\(|-std', names(X))]
y_train = read.table('UCI HAR Dataset/train/y_train.txt')
y_test = read.table('UCI HAR Dataset/test/y_test.txt')
y = rbind(y_train, y_test)
subject_train = read.table('UCI HAR Dataset/train/subject_train.txt')
subject_test = read.table('UCI HAR Dataset/test/subject_test.txt')
subject = rbind(subject_train, subject_test)
names(subject) = 'subject'
activity_labels = read.table('UCI HAR Dataset/activity_labels.txt')
y_labels = cbind(y, lapply(y, function(i){activity_labels[i,2]}))
names(y_labels) = c('activity code', 'activity name')
merged = cbind(subject, y_labels, X_tidy)
library(data.table)
merged = data.table(merged)
tidy = merged[, lapply(.SD, mean), by=c('subject', 'activity name')]
write.table(tidy, 'tidy.txt')
