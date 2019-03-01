CREATE PROCEDURE [dbo].[SelectSP]
	@UserId Int
AS
BEGIN

	SELECT * FROM dbo.Register WHERE UserId=@UserId

END