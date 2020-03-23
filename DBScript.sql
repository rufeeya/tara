create database anz;

show databases;

use anz;

show tables;

CREATE TABLE UserEntity (userId integer primary key, username VARCHAR(20), pwd VARCHAR(20));

CREATE TABLE User_Accounts_Entity (accountNumber integer, accountName VARCHAR(20), accountType VARCHAR(20), balanceDate Date, currency varchar(3), openingBalance decimal(7,2),userId integer,
primary key(accountNumber),
foreign key (userId) references UserEntity(userId));
	
CREATE TABLE transaction_List_Entity ( accountName VARCHAR(20), valueDate Date, currency varchar(3), debitAmount float,
creditAmount float, actionType varchar(10), narrative varchar(50),accountNumber integer, tid integer primary key auto_increment,
foreign key(accountNumber) references user_Accounts_Entity(accountNumber));

insert into UserEntity values (1420, 'maria','maria@12');
insert into UserEntity values (8126, 'john','John%%0');
insert into UserEntity values (3018, 'steve','_steve87_');
insert into UserEntity values (9509, 'mark','%23markk');
insert into UserEntity values (5764, 'Laurel','lau&00rel');


insert into user_Accounts_Entity values (585309209,'SGSavings726','Savings','2018-08-11','SGD',84327.51,1420);
insert into user_Accounts_Entity values (791066619,'AUSavings933','Savings','2018-08-11','AUD',88005.93,1420);
insert into user_Accounts_Entity values (321143048,'AUCurrent433','Current','2018-08-11','AUD',38010.51,1420);
insert into user_Accounts_Entity values (347786244,'SGCurrent166','Current','2018-08-11','SGD',50644.65,8126);
insert into user_Accounts_Entity values (680168913,'AUCurrent374','Current','2018-08-11','AUD',41327.28,5764);
insert into user_Accounts_Entity values (136056165,'AUSavings938','Savings','2018-08-11','AUD',48928.79,3018);
insert into user_Accounts_Entity values (453963528,'SGSavings938','Savings','2018-08-11','SGD',72117.53,8126);
insert into user_Accounts_Entity values (334666982,'AUSavings253','Savings','2018-08-11','AUD',20588.16,5764);
insert into user_Accounts_Entity values (316056165,'AUCurrent754','Current','2018-08-11','AUD',88794.48,1420);
insert into user_Accounts_Entity values (768759901,'SGCurrent294','Current','2018-08-11','SGD',5906.23,3018);
insert into user_Accounts_Entity values (847257972,'AUCurrent591','Current','2018-08-11','AUD',92561.68,1420);
insert into user_Accounts_Entity values (372910729,'AUSavings123','Savings','2018-08-11','AUD',30287.77,3018);
insert into user_Accounts_Entity values (907123456,'SGCurrent901','Current','2018-08-11','SGD',5031.92,1420);
insert into user_Accounts_Entity values (210947632,'SGSavings729','Savings','2018-08-11','SGD',60200.65,8126);
insert into user_Accounts_Entity values (192189021,'SGSavings729','Savings','2018-08-11','SGD',60200.65,3018);
insert into user_Accounts_Entity values (501287354,'AUSavings824','Savings','2018-08-11','AUD',1098.21,8126);
insert into user_Accounts_Entity values (391802374,'SGSavings610','Savings','2018-08-11','SGD',22014.31,5764);
insert into user_Accounts_Entity values (201974537,'SGCurrent294','Current','2018-08-11','SGD',53189.08,8126);
insert into user_Accounts_Entity values (729142839,'AUCurrent901','Current','2018-08-11','AUD',17291.76,5764);
insert into user_Accounts_Entity values (210948213,'SGCurrent555','Current','2018-08-11','SGD',81230.65,1420);
insert into user_Accounts_Entity values (210983412,'AUCurrent123','Current','2018-08-11','AUD',16391.61,3018);


insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,9540.98,'Credit',null,585309209);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,8.33,'Credit',null,585309209);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',20.12,0,'Debit','Personal Use',585309209);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,21500.12,'Credit','Salary',585309209);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',2028.11,8.33,'Debit',null,585309209);
    
    
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,8.33,'Credit',null,321143048);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',20.12,0,'Debit',null,321143048);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,1100.12,'Credit',null,321143048);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',2028.11,8.33,'Debit',null,321143048);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,123.21,'Credit',null,321143048);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',300.11,0,'Debit',null,321143048);
    
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,5000.42,'Credit',null,347786244);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',52.11,0,'Debit',null,680168913);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,821.89,'Credit',null,347786244);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',300.11,0,'Debit',null,347786244);
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,9823.81,'Credit',null,680168913);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',21.11,0,'Debit',null,680168913);
    
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',0,5000.42,'Credit',null,136056165);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',52.11,0,'Debit',null,136056165);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',0,821.89,'Credit',null,136056165);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',300.11,0,'Debit',null,136056165);
       insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',0,9823.81,'Credit',null,192189021);
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',21.11,0,'Debit',null,192189021);
    	
    
    
insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',0,1254.33,'Credit',null,453963528 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',0,2910.12,'Credit',null,453963528 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',21.11,0,'Debit',null,453963528 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',100.33,0,'Debit',null,453963528 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUS',250.11,0,'Debit',null,334666982 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUS',0,6200.77,'Credit',null,334666982 );
    
    
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',100.11,0,'Debit',null,316056165 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,26000.87,'Credit',null,316056165 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',918.15,0,'Debit',null,316056165 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,8821.45,'Credit',null,768759901  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,1210.12,'Credit',null,768759901 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',21.11,0,'Debit',null,907123456  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',907.33,0,'Debit',null,210947632  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',250.11,0,'Debit',null,210947632  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',0,7507.12,'Credit',null,210947632  );
    
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',100.11,0,'Debit',null,501287354  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',0,26000.87,'Credit',null,501287354  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',918.15,0,'Debit',null,501287354  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','SGD',0,8821.45,'Credit',null,391802374   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,1210.12,'Credit',null,768759901 );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',21.11,0,'Debit',null,729142839   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',907.33,0,'Debit',null,729142839   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Savings Account','2012-01-12','AUD',250.11,0,'Debit',null,729142839   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,7507.12,'Credit',null,768759901  );


insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',100.11,0,'Debit',null,210948213   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,26000.87,'Credit',null,210983412   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',918.15,0,'Debit',null,210948213   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,8821.45,'Credit',null,391802374   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',0,1210.12,'Credit',null,210948213  );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',21.11,0,'Debit',null,729142839   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',907.33,0,'Debit',null,210948213    );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','AUD',250.11,0,'Debit',null,729142839   );
    insert into transaction_List_Entity (accountName,valueDate,currency,debitAmount,creditAmount,actionType,narrative,accountNumber)
	values ('Current Account','2012-01-12','SGD',0,7507.12,'Credit',null,210948213   );


commit;


select * from userEntity;
select count(*) from user_Accounts_Entity;
select * from transaction_List_Entity;

