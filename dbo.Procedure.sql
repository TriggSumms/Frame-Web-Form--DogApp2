CREATE PROCEDURE [dbo].[Dogs_CRUD]

	@Action VARCHAR(10)
	,@DogId INT = NULL
	,@Name VARCHAR (55) = NULL
	,@Breed VARCHAR(100) = NULL
	,@Notes VARCHAR(255) = NULL
	,@ImageUrl VARCHAR(255) = NULL
	,@OwnerId int = NULL



AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT Id, Name, Breed, Notes, ImageUrl, OwnerId
            FROM Dog
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO Dog(Name, Breed, Notes, ImageUrl, OwnerId)
            VALUES (@Name, @Breed, @Notes, @ImageUrl, @OwnerId)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE Dog
            SET  Name = @Name, Breed = @Breed, Notes = @Notes, ImageUrl = @ImageUrl, OwnerId = @OwnerId
            WHERE Id = @DogId
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Dog
            WHERE Id = @DogId
      END
END