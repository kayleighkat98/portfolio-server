CREATE TABLE "project" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "name" TEXT NOT NULL UNIQUE,
  "team_size" INTEGER NOT NULL,
  "stack" TEXT NOT NULL,
  "summary" TEXT,
  "role" TEXT,
  "prod_url" TEXT,
  "client_git" TEXT,
  "server_git" TEXT
);
CREATE TABLE "image"(
  "id" SERIAL PRIMARY KEY NOT NULL,
  "project_id" INTEGER REFERENCES "project"(id)ON DELETE CASCADE NOT NULL,
  "type" TEXT NOT NULL,
  "label" TEXT NOT NULL,
  "url" TEXT NOT NULL
);
CREATE TABLE "tech"(
  "id" SERIAL PRIMARY KEY NOT NULL,
  "label" TEXT NOT NULL UNIQUE,
  "stack" TEXT NOT NULL,
  "project_id" INTEGER[] 
  
);