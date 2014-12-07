create database if not exists hr default charset utf8 collate utf8_general_ci;

use hr;

create table if not exists employee(
    `uid` int(10) unsigned not null default 0,
    `name` varchar(10) not null default '',
    `salary` int(10) unsigned not null default 0,
    PRIMARY KEY (uid)
)engine=InnoDB default charset=utf8;

create table if not exists salary_log(
    `uid` int(10) unsigned not null default 0,
    `salary` int(10) unsigned not null default 0,
    `time` int(10) unsigned not null default 0,
    key (uid)
)engine=InnoDB default charset=utf8;

DELIMITER &&
DROP TRIGGER IF EXISTS insert_salary_log;
CREATE TRIGGER insert_salary_log
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    insert into salary_log(uid,salary,time) values(new.uid,new.salary,unix_timestamp());
END
&&
DELIMITER ;

DELIMITER &&
DROP TRIGGER IF EXISTS update_salary_log;
CREATE TRIGGER update_salary_log
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN
     IF NEW.salary != OLD.salary THEN
        insert into salary_log(uid,salary,time) values(new.uid,new.salary,unix_timestamp());
     END IF;
END
&&
DELIMITER ;


insert into employee values(1,'张婕',3000);
insert into employee values(2,'张琦',5000);
insert into employee values(3,'邱龙超',3000);
