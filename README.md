---
title: "README"
author: "brueggel"
date: "Friday, June 19, 2015"
output: html_document
---
#This file describes the scripts designed to create tidy data set stored in mean_set.txt.
1. Scripts require following pacages: "stringr"
2. Read in "R" text files containing training set data: X_train.txt and test set data: X_test.txt using read.table() function:
training_set<- read.table("X_train.txt", header=F) #read training set data 
test_set<- read.table("X_test.txt", header=F) #read test set data
3. Merge training set and test set into "merged_set" data.frame using rbind() function: merged_set<- rbind(training_set, test_set)
4. Read in "R" text file features.txt containing discription of the variables using read.table() function: features<- read.table("features.txt", header=F) 
5. Create list called "header" by subsetting column 2 of "features" data.frame and pass "header" to the names of "merged_set" columns using: header<- features[, 2]
names(merged_set)<- header
6. Extract measurements of "mean" from "merged_set" by using str_detect() function: submerged_set_mean<- merged_set[str_detect(names(merged_set), "ean")]
7. Extract measurements of "std" from "merged_set" by using str_detect() function: submerged_set_std<- merged_set[str_detect(names(merged_set), "std")] 
8. Combine measurements of "mean" and measurements of "std" using cbind() function: submerged_set<- cbind(submerged_set_mean, submerged_set_std) #combine mean and std data
9. Read in "R" text files subject_train.txt and subject_test.txt usind read.table() function: training_subject<- read.table("subject_train.txt", header=F)
    test_subject<- read.table("subject_test.txt", header=F)
10. Combine training and test subject data using rbind() function: merged_subject<- rbind(training_subject, test_subject) #merge subject data
11. Rename variable in "merged_subject" data.frame with "subject": names(merged_subject)<- "subject" 
12. Read in "R" activity lable file usind read.table() function: activity<- read.table("activity_labels.txt", header=F) #read activity labels file
13. Remove underscore from activity labels using gsub() function: activity_labels<- gsub("_", "", activity$V2) #remove underscore from activity labels
14. Read in "R" training and test activity files using read.table() function: training_activity<- read.table("y_train.txt", header=F) #read training activity
    test_activity<- read.table("y_test.txt", header=F) #read test activity
15. Combine training and test activity data using rbind() function: merged_activity<- rbind(training_activity, test_activity) #combine training and test activity data
16. Rename variable in "merged_activity" data.frame with "activity": names(merged_activity)<- "activity"
17. Replace activity id with activity name in "merged_activity" data.frame: merged_activity$activity<- gsub("1", activity_labels[1], merged_activity$activity)
    merged_activity$activity<- gsub("2", activity_labels[2], merged_activity$activity)
    merged_activity$activity<- gsub("3", activity_labels[3], merged_activity$activity)
    merged_activity$activity<- gsub("4", activity_labels[4], merged_activity$activity)
    merged_activity$activity<- gsub("5", activity_labels[5], merged_activity$activity)
    merged_activity$activity<- gsub("6", activity_labels[6], merged_activity$activity)
18. Combine data in "submerged_set" with "subject" data and "activity" data: total_set<- cbind(submerged_set, merged_subject, merged_activity) #combine all data
19. Reorder data by subject and activity using order() function: total_set_order<- total_set[order(total_set[, "subject"], total_set[, "activity"]), ]
20. Optimize variable names by changing to low case and removing all punctuations:  total_set_order_names<- tolower(names(total_set_order)) #change variable names to low case latters
    total_set_order_subnames<- gsub('[[:punct:]]', '', total_set_order_names, ) #remove all punctuations from variable names; names(total_set_order)<- total_set_order_subnames #replace variables names 
21. Split data set "total_set_order" by subject and activity using split() function: total_set_split<- split(total_set_order, list(total_set_order$subject, total_set_order$activity))
22. Calculate mean for each data frame in the "total_set_split" list using aggregate() function with mean() function and combine all the mean data in the "mean_set" : my_aggregate <- function(total_set_split) { #apply aggregate function on all data frames in the list to find mean
    total_set_inlist <- aggregate(.~activity, total_set_split, mean)
}
    out <- lapply(total_set_split, function (x) {
    my_aggregate(x)
})
    mean_set <- do.call(rbind, out)
23. Create mean_set.txt file using write.table() function: write.table(mean_set, file= "mean_set.txt", row.name=FALSE)  
    