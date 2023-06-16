CREATE DATABASE BLOGS_DB
USE BLOGS_DB

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(20),
    email VARCHAR(20),
    password VARCHAR(20)
);

INSERT INTO Users (user_id, username, email, password)
VALUES
    (1, 'john_doe', 'john@example.com', 'password1'),
    (2, 'jane_smith', 'jane@example.com', 'password2'),
    (3, 'alex_brown', 'alex@example.com', 'password3'),
    (4, 'sarah_jones', 'sarah@example.com', 'password4'),
    (5, 'michael_wang', 'michael@example.com', 'password5'),
    (6, 'emily_davis', 'emily@example.com', 'password6'),
    (7, 'david_jackson', 'david@example.com', 'password7'),
    (8, 'olivia_lee', 'olivia@example.com', 'password8'),
    (9, 'william_smith', 'william@example.com', 'password9'),
    (10, 'sophia_anderson', 'sophia@example.com', 'password10');
 
 CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    title VARCHAR(50),
    content VARCHAR(500),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Inserting 10 rows into Posts table
INSERT INTO Posts (post_id, title, content, user_id)
VALUES
    (1, 'Title 1', 'Content 1', 1),
    (2, 'Title 2', 'Content 2', 2),
    (3, 'Title 3', 'Content 3', 3),
    (4, 'Title 4', 'Content 4', 4),
    (5, 'Title 5', 'Content 5', 5),
    (6, 'Title 6', 'Content 6', 6),
    (7, 'Title 7', 'Content 7', 7),
    (8, 'Title 8', 'Content 8', 8),
    (9, 'Title 9', 'Content 9', 9),
    (10, 'Title 10', 'Content 10', 10);


	CREATE TABLE Comments (
    comment_id INT PRIMARY KEY,
    content VARCHAR(200),
    user_id INT,
    post_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id)
);

-- Inserting 10 rows into Comments table
INSERT INTO Comments (comment_id, content, user_id, post_id)
VALUES
    (1, 'Comment 1', 1, 1),
    (2, 'Comment 2', 2, 1),
    (3, 'Comment 3', 3, 2),
    (4, 'Comment 4', 4, 2),
    (5, 'Comment 5', 5, 3),
    (6, 'Comment 6', 6, 3),
    (7, 'Comment 7', 7, 4),
    (8, 'Comment 8', 8, 4),
    (9, 'Comment 9', 9, 5),
    (10, 'Comment 10', 10, 5);


SELECT * FROM Users
SELECT * FROM Posts
SELECT * FROM Comments

SELECT * FROM Posts WHERE post_id = 1;

/*Retrieve information about a specific comment:
sql*/

/*Update the details of a user: sql*/

UPDATE Users SET username = 'NewUsername' WHERE user_id = 7;
--Update the details of a post
UPDATE Posts SET title = 'Updated Title' WHERE post_id = 6;
UPDATE Comments SET content = 'Updated Comment' WHERE comment_id = 1;
DELETE FROM Users WHERE user_id = 4;
--Delete a post and comment
--sql
DELETE FROM Posts WHERE post_id = 5;
DELETE FROM Comments WHERE comment_id = 1;