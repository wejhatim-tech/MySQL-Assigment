-- Step 1: Create the database for this assignment
CREATE DATABASE normalization_app;
USE normalization_app;

-- Table 1: dojos (unchanged from original)
CREATE TABLE dojos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME
);

-- Table 2: students (interests column removed - fixed for 1NF)
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dojo_id INT,
    name VARCHAR(255),
    address1 VARCHAR(255),
    address2 VARCHAR(255),
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (dojo_id) REFERENCES dojos(id)
);

-- Table 3: interests (new table - one row per interest)
CREATE TABLE interests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

-- Table 4: student_interests (new bridge table, Many-to-Many)
CREATE TABLE student_interests (
    student_id INT,
    interest_id INT,
    PRIMARY KEY (student_id, interest_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (interest_id) REFERENCES interests(id)
);