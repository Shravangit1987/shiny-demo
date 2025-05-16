#list
#DEMO
#VSgit
new 

gg=read.csv("C:/Users/M330644/Downloads/Mispriced-Diamonds.csv")

install.packages("ggplot2")


# Filter the data for carat < 2.5
filtered_data <- gg %>% 
  filter(carat < 2.5)

# Create the plot
ggplot(filtered_data, aes(x = carat, y = price, color = clarity)) +
  geom_point(alpha = 0.1) +        # Scatter plot with 10% transparency
  geom_smooth(se = FALSE) +        # Smoothed lines, no confidence interval
  labs(title = "Diamond Price vs Carat by Clarity (Carat < 2.5)",
       x = "Carat", 
       y = "Price",
       color = "Clarity") +
  theme_minimal()