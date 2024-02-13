# Load necessary libraries
library(ggplot2)
library(reshape2)

# Assuming 'df' is your dataframe with the simulated data

# Reshape the data for ggplot2
df_melted <- melt(df, id.vars = 'Hour', variable.name = 'Employee', value.name = 'Customers')

# Use ggplot2 to plot the data
ggplot(data = df_melted, aes(x = Hour, y = Customers, color = Employee)) +
  geom_point() +
  geom_line(aes(group = Employee)) +
  theme_minimal() +
  labs(title = "Employee Efficiency Throughout the Day",
       subtitle = "Number of Customers Served Per Hour by Each Employee",
       x = "Hour of the Day (9 AM to 5 PM)",
       y = "Number of Customers Served",
       color = "Employee") +
  scale_x_continuous(breaks = 9:16)

