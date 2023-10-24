# Load necessary libraries
library(ggplot2)
library(stats)

# Loop through categorical variables
for (this_col in categorical_fields) {
  modified_data <- data  # Assuming you have your data frame
  
  # Create a contingency table
  contingency_table <- table(modified_data$satisfaction, modified_data[[this_col]])
  
  # Create a chi-squared test
  chi_squared_result <- chisq.test(contingency_table)
  
  # Create a bar plot and display it
  print(
    ggplot(modified_data, aes(x = satisfaction, fill = .data[[this_col]])) +
      geom_bar(position = "dodge",fill = "turquoise") +
      labs(
        title = paste("Distribution for Passenger Satisfaction for has", this_col),
        x = "Satisfaction",
        y = "Count"
      ) +
      theme_minimal() +
      scale_fill_brewer(palette = "Set1")
  )
  
  print(chi_squared_result)
  
  # Check if the variable should be considered
  if (chi_squared_result$p.value <= 0.05) {
    print("Consider variable.")
  } else {
    print("Discard variable.")
  }
}

