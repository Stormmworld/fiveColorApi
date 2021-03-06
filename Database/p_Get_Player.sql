USE [MTG]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_PlayerInfo]    Script Date: 4/21/2018 8:01:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[p_Get_PlayerInfo](@PlayerId bigint = 0)		
AS
BEGIN
	SET NOCOUNT ON;
	  SELECT [Id]
		    ,[DisplayName]
		    ,[FirstName]
		    ,[LastName]
		    ,[ImageUrl]
	  FROM [Players]
	  Where [Id] = @PlayerId
	  For xml path ('Player')
END
