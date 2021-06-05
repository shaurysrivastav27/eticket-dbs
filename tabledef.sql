USE traindb;

CREATE TABLE employee(
emp_id VARCHAR(5), 
emp_name VARCHAR(20),
address VARCHAR(30),
gender VARCHAR(1),
ph INT,
doj DATE,
salary DECIMAL(7,2),
PRIMARY KEY(emp_id) 
);

CREATE TABLE Time(
refno INT PRIMARY KEY NOT NULL,
deptime VARCHAR(9),
arrtime VARCHAR(9),
train_id VARCHAR(5),
station_id VARCHAR(3)
); 

CREATE TABLE passenger(
pas_id INT,
p_name VARCHAR(20),
gender VARCHAR(1),
ph INT,
seatno INT,
address VARCHAR(30),
emp_id VARCHAR(5),
res_status VARCHAR(3),
FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
PRIMARY KEY(pas_id)
);

CREATE TABLE trains(
train_id VARCHAR(5) PRIMARY KEY NOT NULL,
station_id VARCHAR(3),
train_name VARCHAR(20)
);

CREATE TABLE station(
station_id VARCHAR(3) PRIMARY KEY NOT NULL,
station_name VARCHAR(20),
no_of_lines INT,
no_of_plat INT
);
ALTER TABLE Time ADD FOREIGN KEY(train_id) REFERENCES trains(train_id) ON DELETE CASCADE;
ALTER TABLE Time ADD FOREIGN KEY(station_id) REFERENCES station(station_id) ON DELETE CASCADE;
ALTER TABLE trains ADD FOREIGN KEY(station_id) REFERENCES station(station_id) ON DELETE CASCADE;
 
CREATE TABLE fare(
reciept_no INT PRIMARY KEY NOT NULL,
train_id VARCHAR(5),
source VARCHAR(3),
dest VARCHAR(3),
class VARCHAR(1),
fare DECIMAL(5,2),
ticket_no INT,
FOREIGN KEY(train_id) REFERENCES trains(train_id) ON DELETE CASCADE
);

CREATE TABLE class(
class VARCHAR(1) NOT NULL,
doj DATE,
no_of_seats INT,
train_id VARCHAR(5),
FOREIGN KEY(train_id) REFERENCES trains(train_id) ON DELETE CASCADE
);
 
CREATE TABLE ticket(
ticketno INT PRIMARY KEY NOT NULL,
source VARCHAR(3),
dest VARCHAR(3),
fare DECIMAL(5,2),
train_id VARCHAR(5)
);

CREATE TABLE route(
arr VARCHAR(9),
dep VARCHAR(9),
stop_no INT PRIMARY KEY AUTO_INCREMENT
);
