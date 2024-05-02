--baitap1
select Distinct city from station
Where ID%2=0
--baitap2
SELECT COUNT (CITY)  -  COUNT (DISTINCT CITY) FROM STATION
--baitap3
--baitap4
SELECT
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences)AS
DECIMAL),1) as mean
from items_per_order
--baitap5
SELECT candidate_id from candidates
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill)=3 
ORDER BY candidate_id ASC
--baitap6
SELECT user_id,
Date(MAX(post_date)) - Date(MIN(post_date)) as days_between
from posts
WHERE post_date>= '2021-01-01' and post_date< '2022-01-01'
GROUP BY user_id
HAVING COUNT(user_id)>=2
--baitap7
SELECT card_name,
Max(issued_amount) - MIN(issued_amount) as difference
from monthly_cards_issued
GROUP BY card_name
ORDER BY Max(issued_amount) - MIN(issued_amount) DESC
--baitap8
SELECT manufacturer, 
COUNT(drug) as drug_count,
ABS(SUM(total_sales)-sum(cogs)) as total_loss
FROM pharmacy_sales
where total_sales<cogs
Group by manufacturer
order by total_loss DESC
--baitap9
select * from cinema
where ID%2=1
and description != 'boring'
order by rating DESC
--baitap10
Select teacher_id,
COUNT(DISTINCT subject_id) as cnt
from teacher
Group by teacher_id
--baitap11
select user_id,
COUNT(follower_id) as followers_count
from followers
group by user_id
order by user_id ASC
--baitap12
Select class
from courses
group by class
having count(student) >=5

