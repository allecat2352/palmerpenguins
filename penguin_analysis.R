# Load necessary library
library(palmerpenguins)

# Inspect the dataset
head(penguins)

# Task 1: Calculate Summary Statistics
# Use apply() to calculate column-wise means for numeric variables
numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)

# Print the result
print(numeric_means)


# Task 2: Count Penguins by Species
# Use tapply() to count the number of penguins for each species
species_counts <- tapply(penguins$species, penguins$species, length)

# Print the result
print(species_counts)


# Task 3: Analyze Bill Length by Species
# Use lapply() to calculate the mean bill length for each species
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species),
                            mean, na.rm = TRUE)

# Print the result
print(bill_length_means)


# Task 4: Create a Summary Table
# Use sapply() to create a summary table with mean and SD for each numeric variable
summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x)
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))

# Print the result
print(summary_table)
