# Pewlett_Hackard_Analysis
Module 7

## OVERVIEW
Understanding your organizational employee population and makeup is critical to workforce planning.  An organization needs to keep a pulse on and anticipate retirements and turnover metrics in order to prepare for minimal impact to the business by recruiting additional talent or preparing current staff through mentor programs to grow them professionally while readying for retiring staff departures.

Throughout the analysis for Pewlett_Hackard, the focus was on first determining the volume of potential retirements in the coming few years.  Upon the realization that the number of potential retirements is quite large, the analysis progressed through queries to identify department specific impacts and titles to better understand where positions will be needing attention. Furthermore, after some discussion regarding a mentorship program, a query was ran to gather employee data for a specific group that would be eligible for a mentorship. 

At the completion of analysis, Pewlett-Hackard is armed with digestable information so plans can be made to brace for the years ahead as a large portion of current employees seek retirement.  Forecasting is a critical factor of this analyis, because now Pewlett-Hackard can implement the mentorship program and have other staff equipped to shift positions as retirements begin. 

Resources
- pgAdmin for SQL database and queries
- .csv files: dept_manager, employees, salaries, dept_emp, departments, titles

## RESULTS
 
* There is a significant amount of employees in senior positions approaching retirement, approximately 71% of total projected retirements. Because of this volume and position elevation I would recommend that Pewlett-Hackard begin the development and implementation of the aforementioned mentorship program as soon as possible.
* The impact of non-senior positions being vacant, while less numerically, is no less significant.  
* Pewlett-Hackard may want to consider scaling the mentorship program for moving from entry-level to mid-level positions.  Building a program will bolster a recruitment plan for all levels as candidates often consider career growth potential; this also builds a general succession plan to help ensure Pewlett-Hacakrd will not face such a significant impact from attrition in the future. 
* Pewlett-Hackard will want to also consider expanding the mentorship program beyond the initial parameters, for example- consider length of employment as well to help evaluate readiness for program. With only 1,549 meeting eligibility criteria, a mere 2% of anticipated retirement that will result in vacant positions, they are facing a critical gap in employment levels. 

![retiring_titles](https://github.com/RachelRautenberg/Pewlett_Hackard_Analysis/blob/main/Resources/retiring_titles.PNG)

## SUMMARY

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
##### A great way to answer this question and get a better idea overall of how the "silver tsunami" will wave is to run query by years. We could run seperate query to understand how many to expect each year. However, to get the correct numbers, the query needs to be run on birthdate since retirement is determined by age not necessarily hire date. Knowing these amounts will give Pewlett-Hackard a better idea for planning rather than having a large number that is being planned to backfill from the beginning.  This will give space for early transitions and refinement of the mentorship program. 

![retirement by year](https://github.com/RachelRautenberg/Pewlett_Hackard_Analysis/blob/main/Resources/retirement_by_year.png)


2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
##### With the information gathered from the module and challenge queries, it is safe to conclude that there are actually more than enough retirement-ready employees to mentor the next generation.  The fantastic piece of that is that those being mentored can be mentored by many, gleaning from the strengths of the aging team and possible learning a variety of ways to complete the required work.  At this point the concern should be directed toward the lack of mentorship-eligible employees and potential external recruitment to fill positions that could be ready by the end of the retirement wave. A query to address this, could simply be an updated or edited query that was already used, just updating the eligibility requirements. 
