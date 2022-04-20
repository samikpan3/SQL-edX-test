Answers 

Q!: 
Select title
FROM Movie 
WHERE director = "Steven Spielberg"; 

Q2
SELECT year 
FROM Movie
WHERE mID in (SELECT mID FROM Rating where stars = 4 or stars = 5)
ORDER BY year ; 

q3
SELECT title 
FROM Movie 
WHERE Movie.mID not in ( SELECT mID from Rating); 


q4
SELECT name 
FROM Reviewer 
join Rating using (rID)
WHERE Reviewer.rID = Rating.rID and ratingDate is null ; 

or
SELECT name
from Reviewer
WHERE rID in (SELECT rID from Rating where ratingDate is null );

Q5 
SELECT re.name, m.title , ra.stars, ra.ratingDate
FROM Reviewer re , Movie m , Rating ra 
WHERE m.mID = ra.mID and re.RID = ra.rID
ORDER BY re.name, m.title, ra.stars;

q6
SELECT name , m.title 
FROM  Movie m  
JOIN Rating a using (mID)
JOIN Rating b using (mID)
JOIN Reviewer  using (rID )
WHERE (a.rID = b.rID and a.mID = b.mID and a.ratingDate > b.ratingDate and a.stars > b.stars); 
	
q7

