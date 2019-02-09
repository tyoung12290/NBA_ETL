CREATE OR REPLACE VIEW sgs_v AS 
( SELECT 
	t1.id AS SG1,
	t2.id AS SG2,
    t1.proj_score as SG1_SCORE,
    t2.proj_score as SG2_SCORE,
    t1.proj_score/(t1.salary/1000) as SG1_SCORE_COST,
    t2.proj_score/(t2.salary/1000) as SG2_SCORE_COST,
    (t1.proj_score/(t1.salary/1000)+t2.proj_score/(t2.salary/1000))/2 as SG_AVG_SCORE_COST,
    t1.salary as SG1_SALARY,
    t2.salary as SG2_SALARY,
	t1.proj_score + t2.proj_score AS SGS_PTS,
	t1.salary + t2.salary AS SGS_SALARY
    FROM
        players_v AS t1
    CROSS JOIN players_v AS t2
    WHERE
        t1.id < t2.id AND t2.pos = 'SG'
            AND t1.pos = 'SG'
    order by SG_AVG_SCORE_COST DESC, SGS_SALARY DESC, SGS_PTS DESC
    limit 20);
