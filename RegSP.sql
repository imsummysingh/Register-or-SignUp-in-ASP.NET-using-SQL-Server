CREATE PROCEDURE [dbo].[RegSP]
	@UserId INT,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Contact nvarchar(50),
	@Gender nvarchar(10),
	@Address nvarchar(50),
	@UserName nvarchar(50),
	@Password nvarchar(50)
AS
	IF @UserId=0
BEGIN
	INSERT INTO dbo.Register
	(
		FirstName,
		LastName,
		Contact,
		Gender,
		[Address],
		UserName,
		[Password]
	)
	Values
	(
		@FirstName,
		@LastName,
		@Contact,
		@Gender,
		@Address,
		@UserName,
		@Password
	)

END
ELSE
BEGIN
	UPDATE dbo.Register 
	SET
	FirstName=@FirstName,
	LastName=@LastName,
	Contact=@Contact,
	Gender=@Gender,
	[Address]=@Address,
	UserName=@UserName,
	[Password]=@Password
	WHERE
	UserId=@UserId
END