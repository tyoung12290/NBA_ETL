CREATE OR REPLACE VIEW pgs_v AS 
( SELECT 
	t1.id AS PG1,
	t2.id AS PG2,
    t1.proj_score as PG1_SCORE,
    t2.proj_score as PG2_SCORE,
    t1.proj_score/(t1.salary/1000) as PG1_SCORE_COST,
    t2.proj_score/(t2.salary/1000) as PG2_SCORE_COST,
    (t1.proj_score/(t1.salary/1000)+t2.proj_score/(t2.salary/1000))/2 as PG_AVG_SCORE_COST,
    t1.salary as PG1_SALARY,
    t2.salary as PG2_SALARY,
	t1.proj_score + t2.proj_score AS PGS_PTS,
	t1.salary + t2.salary AS PGS_SALARY
    FROM
        players_v AS t1
    CROSS JOIN players_v AS t2
    WHERE
        t1.id < t2.id AND t2.pos = 'PG'
            AND t1.pos = 'PG'
    order by PG_AVG_SCORE_COST DESC, PGS_SALARY DESC, PGS_PTS DESC
    limit 20);
