CREATE TABLE pages (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    content TEXT NOT NULL
);
