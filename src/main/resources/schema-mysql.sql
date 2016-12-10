--drop table t_account;

create table t_account (ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, NUMBER varchar(9),
                        NAME varchar(50) not null, BALANCE decimal(8,2), unique(NUMBER));
                        
ALTER TABLE t_account ALTER COLUMN BALANCE SET DEFAULT 0.0;