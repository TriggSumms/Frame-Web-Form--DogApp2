CREATE PROCEDURE [dbo].[Owners_Select]

	@Action VARCHAR(10)
	,@OwnerId INT = NULL
	,@Email VARCHAR (100) = NULL
	,@Name VARCHAR(55) = NULL
	,@Address VARCHAR(255) = NULL
	,@Phone VARCHAR(55) = NULL




AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT Id, Email, Name, Address, Phone
            FROM Owner
      END
 
END