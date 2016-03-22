library(dplyr)

dataset_dir <- "UCI HAR Dataset"

# Generic method to read file content as a vector
read_vector <- function(path) {
    con <- file(path)
    on.exit(close(con))
    readLines(con)
}

# Read labels of features
read_features <- function() {
    features_path <- file.path(dataset_dir, "features.txt")
    features_names <- gsub("^[0-9]+ *", "", read_vector(features_path))
    features_names <- gsub("\\(\\)", "", features_names)
    gsub("-", ".", features_names)
}

# Read labels of activities
read_activities <- function() {
    activities_path <- file.path(dataset_dir, "activity_labels.txt")
    gsub("^[0-9]+ *", "", read_vector(activities_path))
}

# Read table of features from specified set (train or test)
read_features_data <- function(variant, names) {
    features_path <- file.path(dataset_dir, variant, paste0("X_", variant, ".txt"))
    tbl_df(read.table(features_path, col.names = names, colClasses = "numeric")) %>%
        select(matches("(\\.mean|\\.std)(\\.|$)"))
}

# Read subjects column from specified set (train or test)
read_subject_data <- function(variant) {
    subject_path <- file.path(dataset_dir, variant, paste0("subject_", variant, ".txt"))
    read_vector(subject_path) %>%
        as.integer()
}

# Read activity column from specified set (train or test)
read_activity_data <- function(variant, labels) {
    subject_path <- file.path(dataset_dir, variant, paste0("y_", variant, ".txt"))
    read_vector(subject_path) %>%
        factor(labels=labels)
}

# Read a whole set of data from specified set (train or test)
read_data <- function(variant, features, activites) {
    read_features_data(variant, features) %>%
        mutate(subject=read_subject_data(variant),
               activity=read_activity_data(variant, activies))    
}

# Main processing
features <- read_features()
activies <- read_activities()
data <- full_join(read_data("train", features, activities),
                  read_data("test", features, activities))

summary <- data %>%
    group_by(subject, activity) %>%
    summarize_each(funs(mean))

write.table(summary, file = 'summary.txt', row.names = FALSE)