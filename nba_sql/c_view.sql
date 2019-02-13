CREATE OR REPLACE VIEW cs_v AS 
( SELECT 
	t1.id AS C,
    t1.proj_score as C_PTS,
    t1.proj_score/(t1.salary/1000) as C_SCORE_COST,
    t1.salary as C_SALARY,
    t1.date
    FROM
        players_v AS t1
    WHERE t1.pos = 'C'
    order by C_SCORE_COST DESC, C_SALARY DESC, C_PTS DESC
    limit 20);
