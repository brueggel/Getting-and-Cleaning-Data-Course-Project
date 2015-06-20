training_set<- read.table("X_train.txt", header=F) #read training set data
test_set<- read.table("X_test.txt", header=F) #read test set data
merged_set<- rbind(training_set, test_set) #combine both sets
features<- read.table("features.txt", header=F) #read fine containing variables
header<- features[, 2]
names(merged_set)<- header #rename columns with variables 
submerged_set_mean<- merged_set[str_detect(names(merged_set), "ean")] #select mean data
submerged_set_std<- merged_set[str_detect(names(merged_set), "std")] #select std data
submerged_set<- cbind(submerged_set_mean, submerged_set_std) #combine mean and std data
training_subject<- read.table("subject_train.txt", header=F)
test_subject<- read.table("subject_test.txt", header=F)
merged_subject<- rbind(training_subject, test_subject)
names(merged_subject)<- "subject" 
activity<- read.table("activity_labels.txt", header=F)
activity_labels<- gsub("_", "", activity$V2)
training_activity<- read.table("y_train.txt", header=F)
test_activity<- read.table("y_test.txt", header=F)
merged_activity<- rbind(training_activity, test_activity)
names(merged_activity)<- "activity"
merged_activity$activity<- gsub("1", activity_labels[1], merged_activity$activity)
merged_activity$activity<- gsub("2", activity_labels[2], merged_activity$activity)
merged_activity$activity<- gsub("3", activity_labels[3], merged_activity$activity)
merged_activity$activity<- gsub("4", activity_labels[4], merged_activity$activity)
merged_activity$activity<- gsub("5", activity_labels[5], merged_activity$activity)
merged_activity$activity<- gsub("6", activity_labels[6], merged_activity$activity)
total_set<- cbind(submerged_set, merged_subject, merged_activity)
total_set_order<- total_set[order(total_set[, "subject"], total_set[, "activity"]), ]
total_set_order_names<- tolower(names(total_set_order))
total_set_order_subnames<- gsub('[[:punct:]]', '', total_set_order_names, )
names(total_set_order)<- total_set_order_subnames
total_set_split<- split(total_set_order, list(total_set_order$subject, total_set_order$activity))
my_aggregate <- function(total_set_split) {
  total_set_inlist <- aggregate(.~activity, total_set_split, mean)
}
out <- lapply(total_set_split, function (x) {
  my_aggregate(x)
})
mean_set <- do.call(rbind, out)
write.table(mean_set, file= "mean_set.txt", row.name=FALSE)
