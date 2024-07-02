USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteFinalsScheduleInfo]    Script Date: 8/27/2015 9:37:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spDeleteFinalsScheduleInfo]
	@schedule_id int
as
begin

	delete from 
		finals_schedule
	where
		schedule_id = @schedule_id

	return @@ROWCOUNT
end

