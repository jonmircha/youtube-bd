HELP;
DESC KEYSPACES;
USE KEYSPACE_NAME;
DESC TABLES;



CREATE TABLE users (
  user_id UUID PRIMARY KEY,
  username TEXT,
  email TEXT,
  password TEXT,
  full_name TEXT
);

CREATE TABLE user_posts (
  user_id UUID,
  post_id UUID,
  post_content TEXT,
  created_at TIMESTAMP,
  PRIMARY KEY (user_id, post_id)
);

CREATE TABLE user_followers (
  user_id UUID,
  follower_id UUID,
  follower_username TEXT,
  PRIMARY KEY (user_id, follower_id)
);



INSERT INTO users (user_id, username, email, password, full_name)
VALUES (uuid(), 'john_doe', 'john@example.com', 'mypassword', 'John Doe');

INSERT INTO users (user_id, username, email, password, full_name)
VALUES (uuid(), 'jane_smith', 'jane@example.com', 'secret123', 'Jane Smith');

INSERT INTO users (user_id, username, email, password, full_name)
VALUES (uuid(), 'alex_wilson', 'alex@example.com', 'alexpass', 'Alex Wilson');

INSERT INTO users (user_id, username, email, password, full_name)
VALUES (uuid(), 'lisa_johnson', 'lisa@example.com', 'lisa123', 'Lisa Johnson');

INSERT INTO users (user_id, username, email, password, full_name)
VALUES (uuid(), 'michael_brown', 'michael@example.com', 'michaelpass', 'Michael Brown');



INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_1>, uuid(), '¡Hola a todos!', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_1>, uuid(), 'Estoy emocionado de unirme a esta comunidad.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_2>, uuid(), 'Hoy es un hermoso día.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_3>, uuid(), 'Compartiendo mi última experiencia de viaje.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_4>, uuid(), '¡Feliz cumpleaños a mí!', toTimestamp(now()));



INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_1>, uuid(), '¡Hola a todos!', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (e621f01d-b422-4de4-94e2-772eb1d7d1ae, uuid(), '¡Hola a todos!', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_1>, uuid(), 'Estoy emocionado de unirme a esta comunidad.', toTimestamp(now()));
INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (e621f01d-b422-4de4-94e2-772eb1d7d1ae, uuid(), 'Estoy emocionado de unirme a esta comunidad.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_2>, uuid(), 'Hoy es un hermoso día.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_3>, uuid(), 'Compartiendo mi última experiencia de viaje.', toTimestamp(now()));

INSERT INTO user_posts (user_id, post_id, post_content, created_at)
VALUES (<user_id_4>, uuid(), '¡Feliz cumpleaños a mí!', toTimestamp(now()));



INSERT INTO user_followers (user_id, follower_id, follower_username)
VALUES (<user_id_1>, uuid(), 'jane_smith');

INSERT INTO user_followers (user_id, follower_id, follower_username)
VALUES (<user_id_1>, uuid(), 'alex_wilson');

INSERT INTO user_followers (user_id, follower_id, follower_username)
VALUES (<user_id_2>, uuid(), 'john_doe');

INSERT INTO user_followers (user_id, follower_id, follower_username)
VALUES (<user_id_3>, uuid(), 'michael_brown');

INSERT INTO user_followers (user_id, follower_id, follower_username)
VALUES (<user_id_4>, uuid(), 'jane_smith');



SELECT * FROM users;

SELECT * FROM users WHERE user_id = 0feda1aa-4e53-4242-b523-ae16567b2dbe;
SELECT * FROM users WHERE username = 'john_doe';

SELECT * FROM users WHERE username = 'john_doe' LIMIT 200 ALLOW FILTERING;

UPDATE users SET email = 'newemail@example.com' WHERE user_id = <user_id_1>;

DELETE FROM users WHERE user_id = <user_id>;
