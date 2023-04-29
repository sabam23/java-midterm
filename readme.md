```mysql
CREATE DATABASE movies;
USE movies;

create table films (
 movie_id  int primary key NOT NULL AUTO_INCREMENT,
 title varchar(100) NOT NULL,
 director varchar(120) NOT NULL,
 release_date Date NOT NULL,
 rating float NOT NULL,
 description varchar(350) not null
);
```