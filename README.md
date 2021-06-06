# eticket-dbs  using  mySQL (relational database)
## ETICKET database system for Railways
### tabledef -> contains the definition of tables in the DATABASE (traindb) 
#### 				TABLES:
####				*trains *station *routes *employee *passenger *time *fare *class *ticket

##### trains 	: the table containing the data related to trains,with type,name,train_id (primary key) and station id(foreign key);
##### station 	: the table containing the data of station with station id (primary key),station name,no. of lines and platforms; 
##### fare  	: the table containing the data related to details of the fare of ticket with reciept no.(primary key) ,train id (foreign key),source,destination,class,fare and ticket no.; 
##### route 	: the table containing the data related to routes with  arrival,departure and stop no.;
##### employee	: the table containing the data related to details about the employee with employee id,date of joining,gender,salary etc;
##### passenger	: the table containing the data related to passenger details such as address,name,phone number,passenger id,employee who booked the ticket for the passneger;
##### time		: the table containing the data related to Time with arrival,departure,train id,station id, reference number;
##### ticket	: the table containing the data related to ticket details with ticket no.,souce ,destination,fare and train id;
##### class     : the table containing the data related to class with date of journey,class,seat number;
 
#initial schema : 

