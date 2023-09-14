BEGIN TRANSACTION;

-- Drop the table if it exists
IF OBJECT_ID('users', 'U') IS NOT NULL
    DROP TABLE users;

-- Create the users table
CREATE TABLE users (
  id INT PRIMARY KEY IDENTITY(1,1),
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  [password] VARCHAR(129) NOT NULL,
  API_key VARCHAR(32) NOT NULL UNIQUE,
  salt INT NOT NULL,
  [account] VARCHAR(10) NOT NULL,
  logged_in BIT NOT NULL
);

-- Insert data into the users table
INSERT INTO users (id, name, surname, email, [password], API_key, salt, [account], logged_in) VALUES
(1, 'Test', 'User', 'testuser@tuks.co.za', 'MjAyNjM2ODk3Njc0N2NmYWY3NzI4YjgxYzM0ODk4NTcwMGJkMGNmMTJj', 'a9198b68355f78830054c31a39916b7f', 2026368976, 'default', 0),
(2, 'John', 'Doe', 'johndoe3@gmail.com', 'MjEzNjY5MjE4OGYwZjAwMjY3ZWViZmYwNDNkNDBhYWIwMmNlOGQwNjEw', 'K9yW8cGnE3qTfR7xV2sZ6bN1mJ4jL5p', 2136692188, 'default', 0);

COMMIT;