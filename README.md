# Pewlett-Hackard-Analysis

### Overview
For this assignment, I used SQL to analyze a company’s, Pewlett Hackard, employee database to determine the total number of employees retiring within the next few years, the positions those employees hold, and whether retiring employees are eligible to participate in a mentorship program. 

## Resources
Data: titles.csv, salaries.csv, employees.csv, dept_manager.csv, dept_emp.csv, departments.csv
Software: SQL, pgAdmin

## Deliverable 1: The Number of Retiring Employees by Title
For this part of the challenge, I created a table which included the title/position of all current employees born between January 1, 1952 and December 31, 1955. I then filtered that table to only include the employee’s most recent position. 

## Deliverable 2: The Employees for the Mentorship Program
Because there is a “silver tsunami” among Pewlett Hackard employees, company administration is looking for experienced staff to mentor newer employees that would fill the vacant positions. Staff planning to retire within the next few years could work part-time in a mentorship role. Therefore, I was tasked with determining which employees are eligible to hold mentorship roles. Employees are only eligible for the mentorship program if they were born between January 1, 1965 and December 31, 1965. 

## Results
![Retiring Employees by Title ]( https://github.com/CSoldo1/Pewlett-Hackard-Analysis/blob/main/Retiring_Staff_Positions.PNG)
*	Over 70,000 employees will be retiring from Pewlett Hackard within the next few years, which accounts for nearly 24% off all staff. 
*	Among those employees preparing for retirement, approximately 70% are currently in senior-level positions. 
*	Approximately 1,550 employees are eligibly for the mentorship position. 
*	Of the employees eligible for mentorship roles, 738 hold senior-level positions. 

## Summary
The knowledge and expertise gap created by the “silver tsunami” will most likely be an immense hurdle for Pewlett Hackard administration to overcome. Although the majority of retiring staff hold senior-level positions, only two hold management positions. I am unfamiliar with the company’s structure, but even so, this seems like a surprisingly low number. Either the company hierarchy is extremely bottom-heavy, or most management positions are held by younger staff. If the latter, it seems inappropriate to base mentorship eligibility solely on age. Yes, experience does come with age, but there is something to be said about young, highly-motivated staff willing to assume management positions. 

Less than half of the employees eligible for the mentorship program are currently in senior-level positions. Besides time spent within the company, mentor eligibility could also be based on skill. For instance, employees with the highest production value/sales/commissions could be considered for the role. Furthermore, I would focus on younger staff that have risen through the ranks quickly. I would look for the staff who took the least amount of time to become senior-level staff since their arrival in the company. To me, this would be highly indicative of skill and expertise. 
