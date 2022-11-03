CREATE TABLE [cats] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [birth_year] numeric
)
GO

CREATE TABLE [owners] (
  [id] integer PRIMARY KEY,
  [first_name] nvarchar(255),
  [last_name] nvarchar(255)
)
GO

CREATE TABLE [toys] (
  [id] [pk],
  [name] nvarchar(255)
)
GO

CREATE TABLE [cat_toys] (
  [id] integer PRIMARY KEY,
  [cat_id] integer,
  [toy_id] integer
)
GO

CREATE TABLE [cat_owners] (
  [id] integer PRIMARY KEY,
  [owner_id] integer,
  [cat_id] integer
)
GO

ALTER TABLE [cats] ADD FOREIGN KEY ([id]) REFERENCES [toys] ([id])
GO

ALTER TABLE [cats] ADD FOREIGN KEY ([id]) REFERENCES [cat_toys] ([cat_id])
GO

ALTER TABLE [toys] ADD FOREIGN KEY ([id]) REFERENCES [cat_toys] ([toy_id])
GO

ALTER TABLE [cat_owners] ADD FOREIGN KEY ([owner_id]) REFERENCES [owners] ([id])
GO

ALTER TABLE [cats] ADD FOREIGN KEY ([id]) REFERENCES [cat_owners] ([cat_id])
GO
