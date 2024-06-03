# credit_card
This is a Power BI Dashboard for weekly Status Report
Project Objective
To create a thorough weekly credit card dashboard that offers stakeholders real-time insights into important performance metrics and trends so they can efficiently monitor and assess credit card operations


DAX Queries 
The new column and metrics for the KPIs were created using the following Dax queries.
AgeGroup = SWITCH(
    TRUE(),
   'customer'[Customer_Age]<30,"20-30",
    'customer'[Customer_Age]>=30 && 'customer'[Customer_Age]<40,"30-40",
    'customer'[Customer_Age]>=40 && 'customer'[Customer_Age]<50,"40-50",
    'customer'[Customer_Age]>=50 && 'customer'[Customer_Age]<60,"50-60",
     'customer'[Customer_Age]>=60 ,"60+",
     "unknown"
)
IncomeGroup = SWITCH(
    TRUE(),
    'customer'[Income]<35000,"Low",
    'customer'[Income]>=35000 && 'customer'[Income]<70000,"Medium",
    'customer'[Income]>=70000,"High",
    "unknown"

)
Current_week_Revenue = CALCULATE(
    SUM('credit_card'[Revenue]),
    FILTER(
        ALL('credit_card'),
        'credit_card'[week_num2]=MAX('credit_card'[week_num2])))

Previous_week_Revenue = CALCULATE(
    SUM('credit_card'[Revenue]),
    FILTER(
        ALL('credit_card'),
        'credit_card'[week_num2]=MAX('credit_card'[week_num2])-1))


Project Insights
 • Overall revenue is 57M
 • Total interest is 8M
 • Total transaction amount is 46M
 • Male customers are contributing more in revenue 31M, female 26M
 • Blue & Silver credit card are contributing to 93% of overall 
transactions
 • TX, NY & CA is contributing to 68%
 • Overall Activation rate is 57.5%
 • Overall Delinquent rate is 6.06% 

