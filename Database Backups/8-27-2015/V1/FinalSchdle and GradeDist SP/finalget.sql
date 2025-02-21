USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spInsertFinalsScheduleInfo]    Script Date: 8/27/2015 9:44:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spInsertFinalsScheduleInfo]
	@schedule_id int,
	@final_location varchar(20),
	@f_time time,
	@title varchar(50)
as
begin

	if not exists(select * from finals_schedule where schedule_id = @schedule_id)
	begin
		insert finals_schedule
		(
			schedule_id, 
		    final_location,
			f_time,
			title
		)
		select
			@schedule_id, 
		    @final_location,
			@f_time,
			@title
	end

	return @@ROWCOUNT
	
end

