CREATE TABLE  Item (
    id INT
    genre = VARCHAR(80)
    author = VARCHAR(80)
    label = VARCHAR(80)
    publish_date = DATE
    archived = BOOLEAN DEFAULT FALSE
    can_be_archived = BOOLEAN DEFAULT
    move_to_archive = BOOLEAN
    add_label INTEGER REFERENCES Label(id),
    add_genre INTEGER REFERENCES Genre(id),
    add_author INTEGER REFERENCES Author(id)
)
-- create games table
CREATE TABLE game(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  publish_date DATE,
  multiplayer VARCHAR(50),
  last_played_at DATE 
  author_id INT REFERENCES author(id), 
);

-- Create authors table
CREATE TABLE author(
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40)
);
