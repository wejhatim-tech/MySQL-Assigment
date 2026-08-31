#create database books;
#use books;
/*create table user(
UserId Int auto_increment primary key,
name varchar(100),
email varchar(100)
);*/
#select * from user;
/*create table book(
BookId int auto_increment primary key ,
title varchar(100),
author varchar(100)
);*/
#select * from book ;
/*CREATE TABLE favorite (
    UserID INT,
    BookID INT,
    PRIMARY KEY (UserID , BookID),
    FOREIGN KEY (UserID)
        REFERENCES user (UserID),
    FOREIGN KEY (BookID)
        REFERENCES book (BookID)
);*/
select * from favorite;