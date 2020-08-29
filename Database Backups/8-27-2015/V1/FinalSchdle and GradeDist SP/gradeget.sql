USE [cse136]
GO
/****** Object:  StoredProcedure [dbo].[spGetGradeDistributionInfo]    Script Date: 8/27/2015 9:44:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spGetGradeDistributionInfo]
as
begin

	select
		*
	from
		grade_distribution
	order by
		schedule_id
	
	return @@ROWCOUNT
end

