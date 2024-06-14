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

