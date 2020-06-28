# berkeley-sql

# Challenge Results

  As part of a hiring push across a three year span in mid-late 1980s, Pewlett Hackard has a significant amount of employees that will hit the age of retirement. Through thorough analysis of employee and company data, Pewlett Hackard wanted to identify these individuals so that they could prepare to backfill their positions. Using similar techiniques, we were able to compile a list of individuals that are eligible for mentorship programs to assist with backfilling soon-to-be vacant positions.

  In order to identify retiring idividuals, we first needed to collect the necessary data. We extracted our employee records into six different csv files that we then imported into a PostreSQL database. This allowed us easy access to the data so that we could merge/JOIN it together to help us with our analysis. For example, with the employee records data, we were able to identify all people who were born within the specific timeframe that would make them eligible for retirment as well as filter for only those who were hired between 1985 and 1988. We were then able to use this data to grab their most recent tiles, so that we could find the titles that would need backfilling. By these same standards, we were able to easily alter the query to find all employees eligible for mentorship.
  
  ![Pewlett Hackard Employee Schema ERD](https://github.com/csparkma/berkeley-sql/blob/master/challenge_resources/EmployeeDB.png)
  
    Our analysis found that there are ~41.3k employees that are up for retirement in the next three years. This will create a significant gap in productivity as well as take additional resources to increase hiring efforts to fill this gap. The majority of the positions retiring are Senior positions and almost half (~49%) of all retiring positions are in the Engineering department. The majority of the Engineers leaving are Senior positions, so it is vital that we begin mentoring and training our more juniro/mid-level staff to fill these positions. However, seeing as there are only ~2k employees eligible for the mentorship programs, I would urge that we increase our hiring efforts effective immediately. It may be necessary to hire a 3rd-party coontracting company or recruiting firm to take on the workload as filling ~40k positions (over have of which are Senior), will not be an easy process.
    
    I believe we should conduct further analysis to understand our current hiring process. That is,         1. How long does it take from First Contact to Hire Date
      2. How many average applications per position do we receive
      3. Finally, how many positions that are retiring need to be filled (i.e. can we use this opportunity to reorganize our current employee structure)
