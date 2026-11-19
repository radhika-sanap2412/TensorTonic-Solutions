-- Returns: model_name, dataset, accuracy, accuracy_rank, accuracy_dense_rank.
select model_name, dataset, accuracy, rank() OVER (PARTITION BY DATASET ORDER BY ACCURACY DESC ) as accuracy_rank, 
dense_rank() OVER (PARTITION BY DATASET ORDER BY ACCURACY DESC ) as accuracy_dense_rank from model_metrics order by dataset asc,accuracy desc, model_name asc  