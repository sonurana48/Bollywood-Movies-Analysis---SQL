use etl;
/*1. Retrieve the names of all the Bollywood movies which are of drama genre in the dataset. */
select Movie_Name from movies_sql where Genre= 'Drama';
/* 2. Retrieve the names of all the Bollywood movies of Amir Khan in the dataset. */
select Movie_Name from movies_sql where Lead_Star='Aamir Khan';
/* 3. Retrieve the names of all the Bollywood movies which
 are directed by RamGopal Verma in the dataset.*/
select Movie_Name from Movies_sql where Director='Ram Gopal Verma';
/* 4. Retrieve the names of all the Bollywood movies which
 have been released over more than 1000 number of screens in the dataset. */
 select Movie_name from Movies_sql where Number_of_screens>1000;
 /* 5. Retrieve the names of all the Bollywood movies which have generated 
 Revenue(INR) more than 700000000 in the dataset.*/
 select Movie_Name from movies_sql where Revenue>700000000;
 /* 6. Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.*/
select Movie_name from movies_sql where Budget<100000000;
/* 7. Retrieve the names of all the Bollywood movies 
which are flop in the dataset.(flop=revenue – budget) */
select Movie_Name from Movies_sql where revenue < budget;
/* 8. Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)*/
select Movie_Name,Revenue,Budget from movies_sql where Revenue > Budget;
/* 9. Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget). */
select Movie_name, Revenue, Budget from Movies_sql where Revenue < Budget;
/* 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset. */
select Movie_Name, Release_Period from movies_sql where Release_Period = 'Holiday';
/* 11. Retrieve the names of all the Bollywood movies which have lead star as 
Akshay Kumar and directed by Priyadarshan in the dataset. */
select Movie_Name from Movies_sql where Lead_Star = 'Akshay Kumar' and Director = "Priyadarshan";
/* 12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset. */
select Movie_name from movies_sql where movie_name like 'a%';
/* 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset. */
select Movie_Name from Movies_sql where Movie_name like '%a';
/* 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of 
the name in the dataset. */
select Movie_Name from Movies_sql where Movie_name like '_a%';
/* 15. Retrieve the names of all the Bollywood movies having music of amit trivedi in the dataset. */
select Movie_Name,Music_Director from movies_sql where Music_Director = "Amit Trivedi";
/* 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset. */
select Movie_Name,Lead_Star,Genre from movies_sql where Lead_Star = "Akshay Kumar" and Genre = "Comedy";
/* 17. Retrieve the names of movies and star name starring khan in the dataset. */
select Movie_Name , Lead_Star from Movies_sql where Lead_star like '%Khan%';
/* 18. Retrieve all the information of movies race and race2 in the dataset. */
select * from movies_sql where Movie_Name in ('race' and 'race2');
/* 19. Retrieve the names of all the thriller Bollywood movies in the dataset. */
select Movie_Name, genre from Movies_SQL where genre='Thriller';
/* 20. Retrieve the names and budget of all the Bollywood movies according to 
the highest budget to lowest budget in the dataset. */
select Movie_Name, Budget from Movies_sql order by budget desc;
/* 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset. */
select Movie_Name, Budget from Movies_sql order by Budget desc limit 5;
/* 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset. */
select Movie_Name, Revenue from Movies_sql order by revenue desc limit 10;
/* 23. Retrieve the names of top 5 movies of salman khan in the dataset. */
select Movie_Name, Lead_Star from Movies_sql where Lead_star= 'Salman khan' order by revenue desc limit 5;
/* 24. Retrieve the names of top 5 floped movies in the dataset. */
select Movie_Name,Revenue from movies_sql order by Revenue limit 5;
/* 25. Retrieve the names of top 5 hit movies in the dataset. */
select Movie_Name,Revenue from movies_sql order by Revenue desc limit 5;
/* 26. Which is the second movie released on maximum screens. */
select Movie_Name, Number_of_screens from Movies_sql order by Number_of_screens desc limit 1,1;
/* 27. Which is the 10th movies with highest budget. */
select Movie_Name, Budget from Movies_sql order by budget desc limit 9,1;
/* 28. Which is the 2nd movie of Amitabh Bachchan with highest budget. */
select * from movies_sql where Lead_Star = "Amitabh Bachchan" order by Budget desc limit 1,1;
/* 29. Which are the flopped movies of Akshay Kumar. */
select Movie_Name, Lead_star from Movies_sql where Lead_star= 'Akshay Kumar' and revenue < Budget;
/* 30. With which director Sharukh Khan have given the biggest hit movie. */
select * from movies_sql where Lead_Star = "Shahrukh Khan" and Revenue > Budget order by Revenue desc limit 1;

