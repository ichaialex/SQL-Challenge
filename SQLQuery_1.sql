select *
from Customers

-- what is the average spending score based on gender?
SELECT AVG(Spending_Score_1_100) as average_spending, Gender 
from Customers
GROUP by Gender

-- Show all unique professions and group as white collar and blue collar with average income and spending score
SELECT distinct profession
from Customers
   --White collar
 SELECT profession, AVG(Annual_Income) AS AVERAGE_INCOME, AVG(Spending_Score_1_100) AS AVERAGE_SPENDING
 from Customers
 where Profession IN ('marketing','doctor','executive','lawyer', 'healthcare', 'engineer')
 GROUP BY Profession
 ORDER BY AVG(Annual_Income) DESC
    --Blue collar
 SELECT profession, AVG(Annual_Income) AS AVERAGE_INCOME, AVG(Spending_Score_1_100) AS AVERAGE_SPENDING
 from Customers
 where Profession IN ('entertainment','homemaker','artist','null')
 GROUP BY Profession
 ORDER BY AVG(Annual_Income) DESC

 
