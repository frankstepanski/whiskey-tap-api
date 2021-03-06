CREATE TABLE recipe_comments (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    content TEXT NOT NULL,
    date_created TIMESTAMPTZ DEFAULT now() NOT NULL,
    recipe_id INTEGER REFERENCES recipes(id) ON DELETE CASCADE NOT NULL,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL
);