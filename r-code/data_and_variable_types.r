# Installing ourdata R package
install.packages("devtools")
#library(devtools)
detach("package:devtools", unload=TRUE)

# Opening the help
?devtools

# Installung ourdata R package
#install_github("DrBenjamin/ourdata", force = TRUE)
devtools::install_github("DrBenjamin/ourdata", force = TRUE)

# Loading the dplyr library for data manipulation
library(dplyr)
?dplyr
??dplyr

# Assigning continuous data to a data frame and displaying it as a table
continuous_data <- data.frame(
  Height_cm = c(170, 165, 180, 175, 160, 180, 172, 168, 178, 180),
  Weight_kg = c(70, 60, 80, 75, 55, 90, 68, 62, 78, 85)
)

# Displaying the original table
print(continuous_data)

# Ordering data frame for column Height
continuous_data_ordered <- continuous_data %>%
  #arrange(Height_cm) %>%
  #arrange(desc(Height_cm)) %>%
  #arrange(desc(Weight_kg))
  arrange(Height_cm, Weight_kg)

# Removing variables / data from R environment
rm(continuous_data_ordered)

# Assigning count data to a data frame and displaying it as a table
count_data <- data.frame(
  Height = c(170, 165, 182, 175, 165, 175, 175, 168, 175, 182),
  Weight = c(70, 60, 80, 75, 55, 90, 68, 62, 78, 85)
)

# Displaying the original data as a table
print(count_data)

count_data_ordered <- count_data %>%
  arrange(desc(Height), Weight) %>%
  count(Height)

# Displaying the ordered count data
print(count_data_ordered)

# Assigning dataset from ourdata R package
oecd_dataset_raw <- ourdata::oecd_preventable

# Filtering / selecting specific columns / variable
?c
variable_x <- 5
test_char_list <- c("This", "is", "a", "test", "list.")
print(test_char_list)
combined_char <- paste(test_char_list, collapse=' ')

test_string <- "This is a test list."
print(test_string)

test_numbers_list <- c(1, 2, 3, 4, 5)
str(test_numbers_list)
combined_num <- paste(test_numbers_list, collapse=' ')
print(test_numbers_list)
test_numbers_list2 <- c("1", "2", "3", "4", "5")
print(test_numbers_list2)
str(test_numbers_list2)

oecd_dataset <- oecd_dataset_raw %>%
  select(c(Reference.area, TIME_PERIOD, OBS_VALUE)) %>%
  rename(Country = Reference.area) %>%
  group_by(Country) %>%
  summarise(prev_deaths= mean(OBS_VALUE)) %>%
  arrange(desc(prev_deaths))

