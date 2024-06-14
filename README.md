# Weekly Status Report - Power BI Dashboard

## Project Objective
To create a thorough weekly credit card dashboard that offers stakeholders real-time insights into important performance metrics and trends so they can efficiently monitor and assess credit card operations.

## DAX Queries
The new column and metrics for the KPIs were created using the following DAX queries.

### Age Group
```DAX
AgeGroup = SWITCH( TRUE(),
    'customer'[Customer_Age]<30, "20-30",
    'customer'[Customer_Age]>=30 && 'customer'[Customer_Age]<40, "30-40",
    'customer'[Customer_Age]>=40 && 'customer'[Customer_Age]<50, "40-50",
    'customer'[Customer_Age]>=50 && 'customer'[Customer_Age]<60, "50-60",
    'customer'[Customer_Age]>=60, "60+",
    "unknown"
)

Current_week_Revenue = CALCULATE(
    SUM('credit_card'[Revenue]),
    FILTER( ALL('credit_card'), 'credit_card'[week_num2]=MAX('credit_card'[week_num2]))
)
```
## Project Insights
Overall revenue: $57M
Total interest: $8M
Total transaction amount: $46M
Revenue by Gender:
Male customers: $31M
Female customers: $26M
Credit Card Contributions:
Blue & Silver credit cards: 93% of overall transactions
Top Contributing States:
TX, NY, & CA: 68%
Overall Activation Rate: 57.5%
Overall Delinquent Rate: 6.06%

