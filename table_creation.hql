--Create the tables employee_initial

CREATE EXTERNAL TABLE IF NOT EXISTS employee_initial (
eid INT,
firstname STRING,
lastname STRING,
email STRING,
martialstatus STRING,
doj DATE
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/employee_initial'
;

--Create the target table Employee_target with the transformations

CREATE EXTERNAL TABLE IF NOT EXISTS employee_target(
eid INT,
fullname STRING,
email STRING,
martialstatus STRING,
doj DATE
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/employee_target'
;

--load data from employee.txt into employee_initial table

LOAD DATA LOCAL INPATH '/root/Desktop/EDTV/Dataset/employee.txt' INTO TABLE employee_initial;

--load data from employee.txt into employee_initial table

LOAD DATA LOCAL INPATH '/root/Desktop/EDTV/Dataset/employee_target.txt' INTO TABLE employee_target; 

