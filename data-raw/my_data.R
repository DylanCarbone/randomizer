# Script to create and save the my_data dataset

# Create the data frame
my_data <- data.frame(
  id = 1:5,
  value = c(10, 20, 30, 40, 50)
)

# The use_data() function bundles the data with the package
usethis::use_data(my_data, overwrite = TRUE)
