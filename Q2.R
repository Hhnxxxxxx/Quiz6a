# Load necessary library
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Generate data
hours <- 9:16
employee_1_customers <- sample(5:20, 8, replace = TRUE) # Random customers for Employee 1
# Generate Employee 2 customers with a mild correlation to Employee 1, rounding to ensure integers
employee_2_customers <- round(employee_1_customers + rnorm(8, mean = 0, sd = 2))

# Create a dataframe
df <- data.frame(Hour = hours,
                 Employee_1 = employee_1_customers,
                 Employee_2 = employee_2_customers)

# Print the dataframe to see the integer values
print(df)



# Descriptive statistics for both employees
descriptive_stats <- summary(df)
print(descriptive_stats)

# Correlation test
correlation_test <- cor(df$Employee_1, df$Employee_2)
print(paste("Correlation coefficient:", correlation_test))

# Shapiro-Wilk normality test for Employee 1
normality_test_emp1 <- shapiro.test(df$Employee_1)
print(normality_test_emp1)

# Shapiro-Wilk normality test for Employee 2
normality_test_emp2 <- shapiro.test(df$Employee_2)
print(normality_test_emp2)

# Paired t-test to compare the average efficiencies of Employee 1 and Employee 2
paired_t_test_results <- t.test(df$Employee_1, df$Employee_2, paired = TRUE)
print(paired_t_test_results)
