setwd("C:\\Users\\elgih\\Desktop\\biotech\\AI_and_Omics_Research_Internship_2025-main\\AI_and_Omics_Research_Internship_2025\\Module_I")


dir.create("results")
dir.create("plots")
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
data <- read.csv(file.choose())
View(data)

str(data)
data$gender_fac <- as.factor(data$gender)
str(data)

data$gender_num <- ifelse(data$gender_fac == "Female", 1, 0)
class(data$gender_num)

data$gender_num <- as.factor(data$gender_num)
class(data$gender_num)

data$smoker_fac <- as.factor(data$smoker)
str(data)

data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)
class(data$smoker_num)

data$smoker_num <- as.factor(data$smoker_num)
class(data$smoker_num)


# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(data, file = "clean_data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_Ib"


# Upload "class_Ib" R script into your GitHub repository
# Save your R workspace with name "YourName_Class_Ib_Assignment.RData" and upload the saved .RData file in the assignment submission form.
save.image(file = "YourName_Class_Ib_Assignment.RData")



# Load workspace
#load("workspace.RData")
#load("full_workspace.RData")
