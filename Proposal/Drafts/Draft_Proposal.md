# Research Topic Proposal

## Research Topic
**Title:** Analyzing Factors Affecting Airline Passenger Satisfaction

## SMART Question(s)
1. "What are the key factors that significantly influence airline passenger satisfaction?"
2. "Can we predict passenger satisfaction levels based on various factors, including demographics and flight experience?"

## Source of Data
The dataset for this research is sourced from Kaggle. The dataset contains information related to airline passenger satisfaction and has a shape of (103904, 25) where there are 103,904 rows and 25 columns.

## GitHub Repository
Link to our team's GitHub repository for this research: [GitHub Repo Link](https://github.com/parv-bhargava/DATS_6101_13_mid_term_project)

## Additional Information
In this research, we will conduct exploratory data analysis (EDA) to ensure the suitability of our dataset for modeling. Since the dependent variable is binary (satisfaction or neutral/dissatisfaction), we will focus on logistic regression modeling. However, we will also examine some assumptions related to the Gauss-Markov model.

Our dataset contains various variables, including demographic information, flight details, and satisfaction ratings. To prepare the data for modeling, we will address the following aspects:
- Test for multicollinearity using variance inflation factors (VIFs).
- Handle binary variables (e.g., gender, travel class) by encoding them as 0/1.
- Evaluate continuous variables (e.g., age, flight distance) for their relationship with log odds using scatterplots or other relevant techniques. We may apply log transformations if needed.
- Analyze satisfaction rating variables and check for multicollinearity. We may calculate average ratings and explore ordinal logistic regression techniques, such as the Brant test.
- Investigate variables related to flight delays (departure and arrival). These variables may require log transformations, and we will assess multicollinearity. We will also explore whether consolidating these variables into a "cumulative delay" variable is beneficial.

Overall, our research aims to uncover insights into the factors affecting airline passenger satisfaction and develop predictive models to enhance the understanding of passenger preferences. This analysis will be valuable for airlines looking to improve their services and customer experiences in a competitive travel industry.
