--SQL ZOO - SELECT from Nobel Tutorial


--1. Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1960

--2.Show who won the 1962 prize for Literature.

SELECT winner
FROM nobel
WHERE yr = 1960
AND subject = 'Physics'

--3.Show the year and subject that won 'Albert Einstein' his prize.

SELECT yr,subject 
FROM nobel
WHERE winner = 'Albert Einstein'

--4.Give the name of the 'Peace' winners since the year 2000, including 2000.

SELECT winner 
FROM nobel
WHERE yr > 1999 AND  subject = 'Peace'

--5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.

SELECT yr, subject, winner 
FROM nobel
WHERE subject = 'Literature' 
AND 
yr BETWEEN 1980 and 1989

--6. Show all details of the presidential winners:

--Theodore Roosevelt
--Woodrow Wilson
--Jimmy Carter
--Barack Obama

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama')
				   
				   7.
--7 Show the winners with first name John

SELECT winner 
FROM nobel
WHERE winner LIKE 'John %'

--8.Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

SELECT yr, subject, winner 
FROM nobel
WHERE (yr = 1980 AND subject = 'Physics') 
or 
(yr = 1984 AND subject = 'Chemistry')

--9. Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

SELECT yr, subject, winner 
FROM nobel
WHERE yr = 1980 
and  
subject NOT IN ('Chemistry','Medicine')

--10. Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

SELECT yr, subject, winner 
FROM nobel
WHERE (subject = 'Medicine' and yr < 1910) 
or  
(subject = 'Literature' and yr > 2003) 

--11. Find all details of the prize won by PETER GRÜNBERG

SELECT * FROM nobel
WHERE winner LIKE 'PETER GR%NBERG'

--12. Find all details of the prize won by EUGENE O'NEILL

SELECT * FROM nobel
WHERE winner  = 'Eugene O''Neill'

--13.Knights in order
List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

SELECT winner, yr , subject FROM nobel
WHERE winner like 'Sir%'
ORDER BY yr DESC, winner


--14.The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.
Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

SELECT winner, subject ,yr
FROM nobel
WHERE yr = 1984
ORDER BY 
CASE WHEN subject IN ('Chemistry','Physics') THEN 1 ELSE 0 END, subject, winner


