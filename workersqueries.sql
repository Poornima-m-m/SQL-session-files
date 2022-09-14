--first-
SELECT *
FROM worker
WHERE salary IN
    (SELECT salary
     FROM worker w
     WHERE worker.worker_id <> w.worker_id);



	 --second--
SELECT * 
FROM worker 
WHERE worker_id IN 
(SELECT worker_id 
FROM worker  
WHERE salary = 
(SELECT MAX(salary) 
FROM worker 
WHERE salary < 
(SELECT MAX(salary) 
FROM worker)));


--third--
select top 50 percent * from worker;

--fourth--
select department, count(*)
from worker group by department

--fifth--
select department, SUM(salary)
from worker group by department


--sixth--
SELECT  first_name,last_name FROM worker where salary = (SELECT MAX(salary) FROM worker)


--seventh--
SELECT TOP 1 * FROM [worker] ORDER BY worker_id DESC


--eighth--
SELECT DISTINCT salary 
FROM worker a
WHERE  3 >= (SELECT COUNT(DISTINCT salary) 
FROM worker b 
WHERE b.salary <= a.salary) 
ORDER BY a.salary DESC;

--ninth--

SELECT first_name,last_name,salary, department from worker where salary in (select max(salary) from worker group by department)

