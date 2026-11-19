-- Returns: username, segment, engagement_score, activity_rank.
select username, segment, engagement_score, 
row_number() OVER ( PARTITION BY segment ORDER BY engagement_score desc, username asc ) as activity_rank 
from user_activity order by segment asc, activity_rank ASC