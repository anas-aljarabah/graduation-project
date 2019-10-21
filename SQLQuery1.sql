USE [project]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[Insert_User_1]
		@username = N'',
		@password = N'',
		@re_password = N'',
		@type_user = N''

SELECT	@return_value as 'Return Value'

GO
