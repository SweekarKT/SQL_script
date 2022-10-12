--2. Technology/HR Stream
--HR team sourcing profiles from job portal, resource worked in multiple companies, having
--multiple skill set, multiple years of experience in each skills, worked in multiple locations, worked
--in offshore and onsite, having multiple visa, multiple roles performed, managed different team
--capacity, certification, white papers published in different category

--I have decided to create skills table and take it as the parent table 

CREATE TABLE FA_HR_SKILLS(
skill_id INT PRIMARY KEY,
skill_name VARCHAR(30)
);

INSERT INTO FA_HR_SKILLS VALUES(100,'JAVA'),(101,'DOT NET'),(102,'AUTOMATION TESTING'),(103,'DATABASE DEVELOPMENT');
INSERT INTO FA_HR_SKILLS VALUES(104,'PYTHON'),(105,'WEB DEVELOPMENT'),(106,'CYBERSECURITY'),(107,'DATA ANALYSIS');


SELECT * FROM FA_HR_SKILLS;

--The below table is the resource details table which has some constraints and references the skill table for skill id columns
CREATE TABLE FA_RSRC_DETAILS(
r_id INT PRIMARY KEY,
r_name VARCHAR(50) NOT NULL,
r_phone VARCHAR(15) NOT NULL,
r_mail VARCHAR(50) DEFAULT 'NO MAIL',
r_address VARCHAR(200),
r_gender VARCHAR(15),
r_age INT CHECK (r_age>18),
r_visa1 VARCHAR(20),
r_visa2 VARCHAR(20),
skill1_id INT FOREIGN KEY REFERENCES FA_HR_SKILLS(skill_id),
yrs_exp_in_skill1 INT,
skill2_id INT FOREIGN KEY REFERENCES FA_HR_SKILLS(skill_id),
yrs_exp_in_skill2 INT,
r_wrk_off BIT,
r_wrk_on BIT,
r_wrk_multi_loc BIT
);

INSERT INTO FA_RSRC_DETAILS(r_id, r_name ,r_phone, r_mail, r_address, r_gender,r_age,r_visa1,r_visa2,
skill1_id,yrs_exp_in_skill1,skill2_id,yrs_exp_in_skill2,r_wrk_off,r_wrk_on,r_wrk_multi_loc) 
VALUES(1,'Alex','4029843763','alex@mail.com','qqq wwww eee','Male',22,'ZV34243','IDFD340S',100,6,102,2,1,1,1),
(2,'Alan','4029843761','alan@mail.com','qqq wwww eee','Male',22,'UCV4243','IUFD340S',100,2,101,4,1,1,1),
(3,'Albert','4029843762','albert@mail.com','qqq wwww eee','Male',22,'UV34243','IED340S',100,2,102,5,1,1,1),
(4,'Andy','4029843764','andy@mail.com','qqq wwww eee','Male',22,'UV34243','DUFD340S',103,3,102,1,0,1,1),
(5,'Ana','4029843765','ana@mail.com','qqq wwww eee','Female',22,'GH34243','IU34D340S',100,2,101,1,1,1,1),
(6,'Ari','4029843766','ari@mail.com','qqq wwww eee','Female',22,'UTH34243','IUFD340S',103,3,102,5,1,1,0),
(7,'Bob','4029843767','bob@mail.com','qqq wwww eee','Male',22,'UV34243','IUFD670S',100,2,101,2,1,0,1),
(8,'Bill','4029843763','bill@mail.com','qqq wwww eee','Male',22,'POU2DF56','HJK3440S',101,4,103,7,1,1,1),
(9,'Ben','4029233763','ben@mail.com','qqq wwww eee','Male',22,'POU2DF56','HJK3440S',100,9,103,3,0,1,1);

INSERT INTO  FA_RSRC_DETAILS(r_id, r_name ,r_phone, r_mail, r_address, r_gender,r_age,r_visa1,r_visa2,
skill1_id,yrs_exp_in_skill1,skill2_id,yrs_exp_in_skill2,r_wrk_off,r_wrk_on,r_wrk_multi_loc)
VALUES(12,'Charlie','4123233303','charlie@mail.com','qqq wwww eee','Male',22,'POU3R356',NULL,102,1,NULL,NULL,0,1,0);

UPDATE FA_RSRC_DETAILS SET skill2_id = 106 WHERE r_id=7;
SELECT * FROM FA_RSRC_DETAILS ;

DROP TABLE FA_RSRC_DETAILS;


CREATE TABLE FA_RS_COMP_DETAILS(
r_id INT FOREIGN KEY REFERENCES FA_RSRC_DETAILS(r_id),
r_comp_name VARCHAR(50),
r_comp_rol1 VARCHAR(50),
r_comp_rol1_team_cap INT,
r_comp_rol1_exp INT,
r_comp_rol2 VARCHAR(50),
r_comp_rol2_team_cap INT,
r_comp_ro2_exp INT,
r_certification1 VARCHAR(50),
r_certification2 VARCHAR(50),
r_wh_ppr_pb_topic1 VARCHAR(50),
r_wh_ppr_pb_topic2 VARCHAR(50)
);
(1,'Apple','SWE',10,3,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(1,'Microsoft','DA',21,2,NULL,NULL,NULL,'Solutions Expert',NULL,NULL,NULL);


INSERT INTO FA_RS_COMP_DETAILS(r_id, r_comp_name ,r_comp_rol1, r_comp_rol1_team_cap, r_comp_rol1_exp,
r_comp_rol2,r_comp_rol2_team_cap,r_comp_ro2_exp,r_certification1,r_certification2,r_wh_ppr_pb_topic1,r_wh_ppr_pb_topic2) 
VALUES(2,'Apple','SWE',10,3,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(3,'Microsoft','DA',21,2,NULL,NULL,NULL,'Solutions Expert',NULL,NULL,NULL),
(5,'Apple','SWE',10,3,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(7,'Facebook','DA',21,2,'Linkdin',10,5,'Solutions Expert',NULL,'YES',NULL),
(5,'Linkedin','Web Developer',6,2,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(1,'Google','DA',21,2,NULL,NULL,NULL,'YES',NULL,NULL,NULL),
(8,'Apple','SWE',8,1,'Web Devoloper',15,2,'Information Security',NULL,'Secure systems','Risk and Informations system control'),
(11,'Microsoft','DA',21,2,NULL,NULL,NULL,'Employee of the Month',NULL,'YES',NULL),
(3,'Apple','SWE',10,3,'DA',15,2,'Information Security','Cybersecurity','Software Development','Risk and Informations system control'),
(7,'Google','DA',21,2,NULL,NULL,NULL,'Solutions Expert',NULL,NULL,NULL),
(2,'Netflix','Tech Lead',10,3,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(10,'Microsoft','Tester',21,2,NULL,NULL,NULL,'Solutions Expert',NULL,NULL,NULL),
(9,'Apple','SWE',10,3,'DA',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(4,'Amazon','DA',21,2,'Apple',5,5,'Solutions Expert',NULL,'YES',NULL),
(6,'Apple','Data Scientist',10,3,'DA',15,2,'Data Cleaning','Data Analysis','Secure systems','Risk and Informations system control'),
(6,'Microsoft','DA',21,2,NULL,NULL,NULL,'Analysis Expert',NULL,'Data Analysis',NULL),
(4,'Apple','SWE',6,5,'Architect',15,2,'Information Security','Cybersecurity','Secure systems','Risk and Informations system control'),
(5,'Microsoft','QA',21,2,'Amazon',15,5,'YES',NULL,'YES',NULL);


SELECT * FROM FA_RS_COMP_DETAILS ;

DROP TABLE FA_RS_COMP_DETAILS;

CREATE TABLE FA_RESOURCE_FROM_JOB_PORTAL(
r_id INT,
r_wrk_multi_comp BIT DEFAULT 0,
r_has_multi_skills BIT DEFAULT 0,
r_multi_yrs_exp_with_skills BIT DEFAULT 0,
r_work_multi_loc BIT DEFAULT 0,
r_wrk_offshore BIT DEFAULT 0,
r_wrk_onsite BIT DEFAULT 0,
r_has_multi_visa BIT DEFAULT 0,
r_wrk_multi_roles BIT DEFAULT 0,
r_mng_diff_team_capc BIT DEFAULT 0,
r_certification BIT DEFAULT 0,
r_wh_ppr_pb_in_diff_cat BIT DEFAULT 0
);

INSERT INTO FA_RESOURCE_FROM_JOB_PORTAL (r_id)
   SELECT r_id FROM FA_RSRC_DETAILS
   WHERE NOT EXISTS ( SELECT r_id FROM FA_RESOURCE_FROM_JOB_PORTAL 
   WHERE FA_RSRC_DETAILS.r_id= FA_RESOURCE_FROM_JOB_PORTAL.r_id               
   );
 
 UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_wrk_multi_comp=1 
 WHERE EXISTS ( SELECT r_id FROM FA_RS_COMP_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RS_COMP_DETAILS.r_id  )
   AND 
   (SELECT COUNT(r_id) FROM FA_RS_COMP_DETAILS)>1;
  
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_has_multi_skills=1 
 WHERE EXISTS ( SELECT r_id,skill2_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id  
   AND skill2_id IS NOT NULL);
  
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_multi_yrs_exp_with_skills=1
 WHERE EXISTS ( SELECT r_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id
   AND   (yrs_exp_in_skill1>1 OR yrs_exp_in_skill2>1));
  
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_work_multi_loc=1
 WHERE EXISTS ( SELECT r_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id  
   AND r_wrk_multi_loc=1);

UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_wrk_offshore=1
 WHERE EXISTS ( SELECT r_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id  
   AND r_wrk_off=1);
  
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_wrk_onsite=1
 WHERE EXISTS ( SELECT r_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id  
   AND r_wrk_oN=1);
   
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_has_multi_visa=1
 WHERE EXISTS ( SELECT r_id FROM FA_RSRC_DETAILS 
   WHERE FA_RESOURCE_FROM_JOB_PORTAL.r_id= FA_RSRC_DETAILS.r_id  
   AND r_visa1 IS NOT NULL AND r_visa2 IS NOT NULL );

UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_wrk_multi_roles=1 
 WHERE EXISTS ( SELECT r_id FROM FA_RS_COMP_DETAILS 
   WHERE FA_RS_COMP_DETAILS.r_id= FA_RESOURCE_FROM_JOB_PORTAL.r_id               
   AND r_comp_rol1 IS NOT NULL AND r_comp_rol2 IS NOT NULL);
   
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_mng_diff_team_capc=1 
 WHERE EXISTS ( SELECT r_id FROM FA_RS_COMP_DETAILS 
   WHERE FA_RS_COMP_DETAILS.r_id= FA_RESOURCE_FROM_JOB_PORTAL.r_id               
   AND r_comp_rol1_team_cap != r_comp_rol2_team_cap);
  
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_certification=1 
 WHERE EXISTS ( SELECT r_id FROM FA_RS_COMP_DETAILS 
   WHERE FA_RS_COMP_DETAILS.r_id= FA_RESOURCE_FROM_JOB_PORTAL.r_id               
   AND r_certification1 IS NOT NULL);
 
UPDATE FA_RESOURCE_FROM_JOB_PORTAL
 SET r_wh_ppr_pb_in_diff_cat=1 
 WHERE EXISTS ( SELECT r_id FROM FA_RS_COMP_DETAILS 
   WHERE FA_RS_COMP_DETAILS.r_id= FA_RESOURCE_FROM_JOB_PORTAL.r_id               
   AND r_wh_ppr_pb_topic1 != r_wh_ppr_pb_topic2);
  
SELECT * FROM FA_RESOURCE_FROM_JOB_PORTAL;

DROP TABLE FA_RESOURCE_FROM_JOB_PORTAL;

SELECT * FROM FA_HR_SKILLS;
SELECT * FROM FA_RSRC_DETAILS;
SELECT * FROM FA_RS_COMP_DETAILS;
SELECT * FROM FA_RESOURCE_FROM_JOB_PORTAL;


--JOINS
--INNER JOIN
--The below query gives the resources having multiple skills
SELECT *
FROM FA_HR_SKILLS AS SK
INNER JOIN FA_RSRC_DETAILS AS RD ON SK.skill_id  = RD.skill2_id
WHERE skill2_id IS NOT NULL;

--LEFT JOIN
--The below query gives the person who has not worked in any company
SELECT *  FROM FA_RSRC_DETAILS AS PD
LEFT JOIN FA_RS_COMP_DETAILS AS CD ON PD.r_id = CD.r_id
WHERE CD.r_id IS NULL;

--RIGHT JOIN
--The below query returns the non matching skill1 which no has
SELECT SK.skill_id,SK.skill_name  FROM FA_RSRC_DETAILS AS RD
RIGHT JOIN  FA_HR_SKILLS AS SK ON  RD.skill1_id = SK.skill_id
WHERE r_id IS NULL;

--FULL JOIN 
--returns the matching and non matching rows from both the columns
SELECT * FROM FA_RSRC_DETAILS AS RD
RIGHT JOIN  FA_HR_SKILLS AS SK ON  RD.skill1_id = SK.skill_id;

SELECT * FROM FA_RSRC_DETAILS AS RD
RIGHT JOIN  FA_RESOURCE_FROM_JOB_PORTAL AS JP ON  RD.r_id = JP.r_id;

--VIEWS
--The below view is created to retreive the resource with all the requirements
CREATE VIEW FA_M1_T1_PERFECT_RSRC AS
SELECT RD.r_id,r_name FROM FA_RSRC_DETAILS AS RD
INNER JOIN FA_RESOURCE_FROM_JOB_PORTAL AS JP ON RD.r_id = JP.r_id 
WHERE
r_wrk_multi_comp = 1 AND
r_has_multi_skills = 1 AND
r_multi_yrs_exp_with_skills = 1 AND
r_work_multi_loc = 1 AND
r_wrk_offshore = 1 AND
r_wrk_onsite = 1 AND
r_has_multi_visa = 1 AND
r_wrk_multi_roles = 1 AND
r_mng_diff_team_capc = 1 AND
r_certification = 1 AND
r_wh_ppr_pb_in_diff_cat = 1;

SELECT * FROM FA_M1_T1_PERFECT_RSRC;
DROP VIEW FA_M1_T1_PERFECT_RSRC;

--The below view is created to retreive the skills which no one has
CREATE VIEW FA_M1_T1_SKILL_NO_RSRC_HAS AS
SELECT skill_id,skill_name  FROM FA_HR_SKILLS
WHERE skill_id NOT IN  (SELECT DISTINCT skill1_id FROM FA_RSRC_DETAILS WHERE skill1_id IS NOT NULL)
AND  skill_id NOT IN (SELECT DISTINCT skill2_id FROM FA_RSRC_DETAILS WHERE skill2_id IS NOT NULL);

SELECT * FROM FA_M1_T1_SKILL_NO_RSRC_HAS;
DROP VIEW FA_M1_T1_SKILL_NO_RSRC_HAS;


--The below view retreives the resources having particular skill(DOT NET)
CREATE VIEW FA_M1_T1_RSCRS_WITH_PARTICULAR_SKILL AS
SELECT r_id,r_name,(SELECT skill_name FROM FA_HR_SKILLS WHERE skill_id = 101) AS skill_name 
FROM FA_RSRC_DETAILS
WHERE skill1_id=101 OR skill2_id = 101;

SELECT * FROM FA_M1_T1_RSCRS_WITH_PARTICULAR_SKILL;
DROP VIEW FA_M1_T1_RSCRS_WITH_PARTICULAR_SKILL;