#QUESTION 1 - Write a statement that shows all the thefts that happened in neighbourhoods that have 'Humber' in the name.
SELECT *
  FROM bikeTheft
  WHERE Neighbourhood LIKE "%Humber%";
  
#QUESTION 2 - Narrow the list from question 1 down by only showing thefts in odd-numbered years.
SELECT *
    FROM bikeTheft
    WHERE Neighbourhood 
    LIKE "%Humber%"
    AND Occurrence_Year % 2;
  
#QUESTION 3 - Get the average cost of a stolen bike  (all neighbourhoods, all years). Format this result as a dollar figure (include the dollar sign, and don't show fractions of a cent).
SELECT 
	CONCAT("$", ROUND(AVG(Cost_of_Bike), 2))
    AS 'Average Cost'
    FROM bikeTheft;	
    
#QUESTION 4 - Write a query that returns the number of unique combinations of bike colour & speed.
SELECT 
	COUNT(DISTINCT Bike_Colour, Bike_Speed)
    AS 'Total Number of Multi-Color Bikes'
	FROM bikeTheft;
    
#QUESTION 5 - Write a statement that shows a list of location types with more than 500 total thefts.
SELECT Location_Type, COUNT(Location_Type)
	FROM bikeTheft
    GROUP BY Location_Type
    HAVING count(Location_Type) > 500;
    
# QUESTION 6 - Write a statement that returns the oldest incident (based on the occurrence date) from this dataset.
SELECT MIN(Occurrence_Year)
	AS 'Oldest Incident'
	FROM bikeTheft;
    
#QUESTION 7 - Write a statement that returns the top 10 neighbourhoods with the most reported thefts.
SELECT 
	Neighbourhood
FROM 
	bikeTheft
ORDER BY 
	id DESC
LIMIT 
	0, 10;

#QUESTION 8 
SELECT 
	SUM(Cost_of_Bike) / COUNT(Cost_of_Bike), 
    AVG(Cost_of_Bike)
	FROM bikeTheft;
    
#QUESTION 9
-- The results were equal for question #8. The results are the same because they're essentially doing the same thing.
-- The AVG() function is a more abstracted version. 
    
    

    
    
    

  
  