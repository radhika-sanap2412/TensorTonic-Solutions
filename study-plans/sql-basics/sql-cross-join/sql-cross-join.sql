-- Returns: segment_name, metric_name.
select s.segment_name , m.metric_name from segments s cross join metrics m order by s.segment_name ASC, m.metric_name ASC