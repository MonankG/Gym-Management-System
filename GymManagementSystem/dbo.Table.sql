CREATE TABLE [dbo].[trainer_info]
(
	[trainer_id] INT NOT NULL PRIMARY KEY, 
    [trainer_name] NVARCHAR(50) NOT NULL, 
    [trainer_experience] INT NOT NULL, 
    [trainer_contactno] INT NULL
)
