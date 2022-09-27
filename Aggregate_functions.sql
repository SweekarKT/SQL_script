SELECT SUM(SALARY), DEPARTMENT_ID  FROM S_HREMPLOYEES
GROUP BY DEPARTMENT_ID  ; 

SELECT AVG(SALARY), MANAGER_ID 
FROM S_HREMPLOYEES
GROUP BY MANAGER_ID 
ORDER BY AVG(SALARY) DESC;

SELECT MIN(SALARY), DEPARTMENT_ID  
FROM S_HREMPLOYEES
WHERE DEPARTMENT_ID  IS NOT NULL 
GROUP BY DEPARTMENT_ID
ORDER BY MIN (SALARY) ;  

SELECT MAX(SALARY), DEPARTMENT_ID  
FROM S_HREMPLOYEES
WHERE DEPARTMENT_ID  IS NOT NULL 
GROUP BY DEPARTMENT_ID
ORDER BY MIN (SALARY) DESC;

SELECT COUNT(*), DEPARTMENT_ID
FROM S_HREMPLOYEES
GROUP BY DEPARTMENT_ID ;