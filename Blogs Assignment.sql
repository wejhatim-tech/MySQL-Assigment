#create database blogs_app;
#use blogs_app;
-- Table 1: USER
/*CREATE TABLE user (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Password VARCHAR(100)
);
 
-- Table 2: BLOG
CREATE TABLE blog (
    BlogID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(150)
);
 
-- Table 3: BLOG_ADMIN (bridge table: co-administrators, Many-to-Many)
CREATE TABLE blog_admin (
    UserID INT,
    BlogID INT,
    PRIMARY KEY (UserID, BlogID),
    FOREIGN KEY (UserID) REFERENCES user(UserID),
    FOREIGN KEY (BlogID) REFERENCES blog(BlogID)
);
 
-- Table 4: POST
CREATE TABLE post (
    PostID INT AUTO_INCREMENT PRIMARY KEY,
    BlogID INT,
    Title VARCHAR(150),
    Content TEXT,
    DatePosted DATETIME,
    FOREIGN KEY (BlogID) REFERENCES blog(BlogID)
);
 
-- Table 5: COMMENT
CREATE TABLE comment (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    PostID INT,
    UserID INT,
    Content TEXT,
    DateCommented DATETIME,
    FOREIGN KEY (PostID) REFERENCES post(PostID),
    FOREIGN KEY (UserID) REFERENCES user(UserID)
);
 
-- Table 6: FILE (files uploaded with a post)
CREATE TABLE file (
    FileID INT AUTO_INCREMENT PRIMARY KEY,
    PostID INT,
    FileURL VARCHAR(255),
    FileType VARCHAR(50),
    FOREIGN KEY (PostID) REFERENCES post(PostID)
);
 
-- Table 7: PAGE_VIEW (tracking which page logged-in users visit)
CREATE TABLE page_view (
    ViewID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    PageURL VARCHAR(255),
    VisitDate DATETIME,
    Duration INT,
    IPAddress VARCHAR(45),
    FOREIGN KEY (UserID) REFERENCES user(UserID)
);*/
 #select * from page_view;
 select * from file;