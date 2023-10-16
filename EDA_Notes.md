# Notes for exploratory data analysis

## Goal

The intent is to ensure that our dataset is suitable for modeling purposes. Because our dependent variable is binary (either "satisfied" or "neutral or dissatisfied"), [some of the assumptions will differ](https://www.statisticssolutions.com/free-resources/directory-of-statistical-analyses/assumptions-of-logistic-regression/) relative to Gauss-Markov. 

Gauss-Markov assumptions include:

1. **Linearity:** a linear relationship between independent and dependent varables; this is not required for logistic regression, although a linear relationship is expected with the log odds

2. **Random sampling:** samples are drawn randomly from the population; while I'm unable to track down the survey source at the moment, I think we can assume based on the large number of observations that this reasonably approximates the population

3. **No perfect collinearity:** independent variables are not highly correlated with each other; this is a key focus for EDA

4. **Zero conditional mean:** the expected value of the error term for each independent variable is zero; I'm not clear on how this ties into logistic regression

5. **Homoscedasticity:** constant variance of error terms for each value of X; not required for logistic regression

An added assumption discussed in class on 10/4 is normality of errors, where residuals are expected to be normally distributed; this is not required for logistic regression

---

## Variables

Variables are as follows:

1. **Gender:** Gender of the passengers (Female, Male)

2. **Customer Type:** The customer type (Loyal customer, disloyal customer)

3. **Age:** The actual age of the passengers

4. **Type of Travel:** Purpose of the flight of the passengers (Personal Travel, Business Travel)

5. **Class:** Travel class in the plane of the passengers (Business, Eco, Eco Plus)

6. **Flight distance:** The flight distance of this journey

7. **Inflight wifi service:** Satisfaction level of the inflight wifi service (0:Not Applicable;1-5)

8. **Departure/Arrival time convenient:** Satisfaction level of Departure/Arrival time convenient

9. **Ease of Online booking:** Satisfaction level of online booking

10. **Gate location:** Satisfaction level of Gate location

11. **Food and drink: Satisfaction level of Food and drink**

12. **Online boarding:** Satisfaction level of online boarding

13. **Seat comfort:** Satisfaction level of Seat comfort

14. **Inflight entertainment:** Satisfaction level of inflight entertainment

15. **On-board service:** Satisfaction level of On-board service

16. **Leg room service:** Satisfaction level of Leg room service

17. **Baggage handling:** Satisfaction level of baggage handling

18. **Check-in service:** Satisfaction level of Check-in service

19. **Inflight service:** Satisfaction level of inflight service

20. **Cleanliness:** Satisfaction level of Cleanliness

21. **Departure Delay in Minutes:** Minutes delayed when departure

22. **Arrival Delay in Minutes:** Minutes delayed when Arrival

23. **Satisfaction:** Airline satisfaction level(Satisfaction, neutral or dissatisfaction)

---

##Variable Analysis

1. **Gender (Categorical Variable):**
   - Descriptive Statistics: Count of each gender category (e.g., Male, Female).
   - Chi-Square Test: To test for the association between gender and satisfaction.

2. **Customer Type (Categorical Variable):**
   - Descriptive Statistics: Count of each customer type (e.g., Loyal, Disloyal).
   - Chi-Square Test: To test for the association between customer type and satisfaction.

3. **Age (Continuous Variable):**
   - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
   - Histogram and Box Plot: To visualize the distribution of age.
   - Normality Test: To check if the age variable follows a normal distribution.

4. **Type of Travel (Categorical Variable):**
   - Descriptive Statistics: Count of each type (e.g., Business, Personal).
   - Chi-Square Test: To test for the association between the type of travel and satisfaction.

5. **Class (Categorical Variable):**
   - Descriptive Statistics: Count of each class (e.g., Economy, Business, First).
   - Chi-Square Test: To test for the association between class and satisfaction.

6. **Flight Distance (Continuous Variable):**
   - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
   - Histogram and Box Plot: To visualize the distribution of flight distances.
   - Measures of Variance: Calculate the variance or standard deviation.

7. **Various Service Ratings (e.g., Inflight wifi service, Departure/Arrival time convenient, etc.) - (Continuous Variables):**
   - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
   - Histograms: To visualize the distribution of ratings for each service.
   - Correlation Analysis: Check for correlations between these service ratings and satisfaction (e.g., using correlation coefficients or ANOVA).

8. **Departure Delay in Minutes (Continuous Variable):**
   - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
   - Histogram and Box Plot: To visualize the distribution of departure delays.

9. **Arrival Delay in Minutes (Continuous Variable):**
   - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
   - Histogram and Box Plot: To visualize the distribution of arrival delays.
   
10. **Satisfaction (Categorical Variable):**
    - Descriptive Statistics: Count of each satisfaction category (e.g., Satisfied, Dissatisfied).
    - Chi-Square Test: To explore the association between different factors (e.g., Gender, Customer Type, Type of Travel) and satisfaction.

11. **Gate Location (Categorical Variable):**
    - Descriptive Statistics: Count of each gate location category.
    - Chi-Square Test: To test for the association between gate location and satisfaction.

12. **Food and Drink (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of ratings for food and drink.
    - Correlation Analysis: Check for correlations between food and drink ratings and satisfaction.

13. **Online Boarding (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of online boarding ratings.
    - Correlation Analysis: Check for correlations between online boarding ratings and satisfaction.

14. **Seat Comfort (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of seat comfort ratings.
    - Correlation Analysis: Check for correlations between seat comfort ratings and satisfaction.

15. **Inflight Entertainment (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of inflight entertainment ratings.
    - Correlation Analysis: Check for correlations between inflight entertainment ratings and satisfaction.

16. **On-Board Service (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of on-board service ratings.
    - Correlation Analysis: Check for correlations between on-board service ratings and satisfaction.

17. **Leg Room Service (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of leg room service ratings.
    - Correlation Analysis: Check for correlations between leg room service ratings and satisfaction.

18. **Baggage Handling (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of baggage handling ratings.
    - Correlation Analysis: Check for correlations between baggage handling ratings and satisfaction.

19. **Check-In Service (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of check-in service ratings.
    - Correlation Analysis: Check for correlations between check-in service ratings and satisfaction.

20. **Inflight Service (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of inflight service ratings.
    - Correlation Analysis: Check for correlations between inflight service ratings and satisfaction.

21. **Cleanliness (Continuous Variable):**
    - Descriptive Statistics: Mean, median, standard deviation, and other summary statistics.
    - Histogram and Box Plot: To visualize the distribution of cleanliness ratings.
    - Correlation Analysis: Check for correlations between cleanliness ratings and satisfaction.

## Testing and transformations

### Multicollinearity

All variables will need to be tested for multicolllinearity through variance inflation factors (VIFs).

### Binary

Some variables, such as gender and travel class, are binary. As far as I'm aware, this does not require any specific testing apart from multicollinearity. Because of the large sample size, we can assume that the sampling distribution is normal. Such variables will need to be encoded with 0/1 for modeling purposes. Histogram visuals could be useful.

### Continuous (non-ratings)

Some variables, like age, flight distance, etc. are continuous. Apart from multicollinearity, these should be evaluated in terms of their relationship with the log odds. This can take the form of a scatterplot or something else; I don't have too much experience with this, but from searching online I think that the "car" package's residplot() function may serve this purpose; QQ plots with "deviance residuals" could potentially work as well. Flight distance in particular is a positively skewed distribution that may need a log transformation.

## Ratings

There are a number of variables representing a rating out of 5 for certain aspects of the flight experience. Multicollinearity checks are critical here to ensure that multiple independent rating variables aren't highly correlated with each other in the model. We will likely need to generate average ratings (either for specific groupings or all ratings collectively) and perform checks on those. While these have a sort of normal-ish distribution, linearity assumptions aren't as strict here to my knowledge, and I'll look into potential techniques specific to ordinal logistic regressions. We may need to test whether each step in the rating corresponds to an equivalent increase in the likelihood of being satisfied, with tests like the brant test (I think the "brant" package could be an option here). Histogram visuals are a natural option here, but some sort of consolidated rating visual could help streamline the report.

## Delays

There are variables for both departure delay and arrival delay. These distributions are showing a heavy positive skew, and a log transformation may be required depending on linearity testing. Also, I imagine that the risk of multicollinearity is quite high here because a departure delay is likely to turn into an arrival delay, so these may need to be consolidated into a single variable. For the sake of interpretation, a "cumulative delay" sum might be a better alternative to an average, but that can be discussed once mutlicollinearity is established. Linearity testing relative to log odds is needed.
