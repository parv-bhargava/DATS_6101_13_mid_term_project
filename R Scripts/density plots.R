library(vcd)

airline_data <- read.csv('archive/train.csv')
# Perform a chi-square test for the 'Gender' variable
chi_square_test <- chisq.test(table(airline_data$Gender, airline_data$satisfaction))

# Print the chi-square test results
chi_square_test

# Load the required library
library(corrplot)

# Select the rating variables from dataset
rating_variables <- airline_data[, c(
  "Inflight.wifi.service",
  "Departure.Arrival.time.convenient",
  "Ease.of.Online.booking",
  "Gate.location",
  "Food.and.drink",
  "Online.boarding",
  "Seat.comfort",
  "Inflight.entertainment",
  "On.board.service",
  "Leg.room.service",
  "Baggage.handling",
  "Checkin.service",
  "Inflight.service",
  "Cleanliness"
)]

# Calculate the correlation matrix
correlation_matrix <- cor(rating_variables)

# Create a correlation heatmap
corrplot(correlation_matrix, method = "color", tl.col = "black", tl.srt = 45)

# Create pairwise scatterplots
pairs(rating_variables)

library(ggplot2)


# Load the required libraries
library(ggplot2)
library(dplyr)

# Create a density plot with ggplot2
ggplot(airline_data, aes(x = Flight.Distance)) +
  geom_density(color = 'slategray', fill = 'slategray', alpha = 0.7) +
  theme_minimal() +
  labs(title = "Displot-Like Plot of Age", x = "Age") +
  theme(axis.title.y = element_blank(), axis.text.y = element_blank()) +
  facet_wrap(~1, nrow = 1, scales = "free_x")


# Load the required libraries
library(ggplot2)

# Create displot-like plots for Age and Flight Distance
plot_age <- ggplot(airline_data, aes(x = Age, fill = satisfaction)) +
  geom_density(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Age vs Satisfaction", x = "Age") +
  theme(legend.position = "top")

plot_flight_distance <- ggplot(airline_data, aes(x = Flight.Distance, fill = satisfaction)) +
  geom_density(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Flight Distance vs Satisfaction", x = "Flight Distance") +
  theme(legend.position = "top")

# Arrange the plots side by side
library(gridExtra)
grid.arrange(plot_age, plot_flight_distance, ncol = 2)


# Load the required libraries
library(ggplot2)
library(dplyr)

# Create displot-like plots for Age and Flight Distance with count on the y-axis
plot_age <- ggplot(airline_data, aes(x = Age, fill = satisfaction)) +
  geom_bar(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Age vs Satisfaction", x = "Age", y = "Count") +
  theme(legend.position = "top")

plot_flight_distance <- ggplot(airline_data, aes(x = Flight.Distance, fill = satisfaction)) +
  geom_bar(alpha = 0.7) +
  theme_minimal() +
  labs(title = "Flight Distance vs Satisfaction", x = "Flight Distance", y = "Count") +
  theme(legend.position = "top")

# Arrange the plots side by side
library(gridExtra)
grid.arrange(plot_age, plot_flight_distance, ncol = 2)


