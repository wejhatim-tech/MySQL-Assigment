-- Step 1: Create the database for this assignment
CREATE DATABASE user_dashboard_app;
USE user_dashboard_app;

-- Table 1: USER
CREATE TABLE user (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Email VARCHAR(100),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Password VARCHAR(100),
    UserLevel VARCHAR(20),
    Description TEXT,
    CreatedAt DATETIME
);

-- Table 2: MESSAGE
-- ProfileUserID = whose profile the message was posted on
-- AuthorID      = who actually wrote the message
CREATE TABLE message (
    MessageID INT AUTO_INCREMENT PRIMARY KEY,
    ProfileUserID INT,
    AuthorID INT,
    Content TEXT,
    DatePosted DATETIME,
    FOREIGN KEY (ProfileUserID) REFERENCES user(UserID),
    FOREIGN KEY (AuthorID) REFERENCES user(UserID)
);