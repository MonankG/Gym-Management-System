CREATE TABLE [dbo].[groupexercise] (
    [cust_id]           INT            NOT NULL,
    [cust_name]         NVARCHAR (MAX) NOT NULL,
    [cust_exercisedate] NVARCHAR (MAX) NOT NULL,
    [cust_address]      NVARCHAR (MAX) NOT NULL,
    [cust_contactno] INT NOT NULL, 
    [cust_exercisedays] INT NOT NULL, 
    PRIMARY KEY CLUSTERED ([cust_id] ASC)
);

