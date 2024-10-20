CREATE TABLE [dbo].[personaltraining]
(
	[member_id] INT NOT NULL PRIMARY KEY, 
    [member_name] NVARCHAR(50) NULL, 
    [member_contactno] NVARCHAR(50) NULL, 
    [member_trainingTime] NVARCHAR(50) NULL, 
    [member_trainer] NVARCHAR(50) NULL, 
    [member_trainStartDate] NVARCHAR(50) NULL
)
