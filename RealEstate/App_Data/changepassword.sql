SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
 CREATE	PROCEDURE [dbo].[ChangePassword]
(@uid int, @oldpwd varchar(10), @newpwd varchar(10))
AS

 if exists ( select * from users
    where uid = @uid and  password = @oldpwd )
    
    update users  
       set  password = @newpwd
      where uid = @uid
      
 else
   raiserror('Invalid Password',15,1)       
     
END
