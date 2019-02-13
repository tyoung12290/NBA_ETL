CREATE OR REPLACE VIEW pfs_v AS 
( SELECT 
	t1.id AS pf1,
	t2.id AS pf2,
    t1.proj_score as pf1_SCORE,
    t2.proj_score as pf2_SCORE,
    t1.proj_score/(t1.salary/1000) as pf1_SCORE_COST,
    t2.proj_score/(t2.salary/1000) as pf2_SCORE_COST,
    (t1.proj_score/(t1.salary/1000)+t2.proj_score/(t2.salary/1000))/2 as pf_AVG_SCORE_COST,
    t1.salary as pf1_SALARY,
    t2.salary as pf2_SALARY,
	t1.proj_score + t2.proj_score AS pfS_PTS,
	t1.salary + t2.salary AS pfS_SALARY,
    t1.date
    FROM
        players_v AS t1
    CROSS JOIN players_v AS t2
    WHERE
        t1.id < t2.id AND t2.pos = 'pf'
            AND t1.pos = 'pf'
    order by pf_AVG_SCORE_COST DESC, pfS_SALARY DESC, pfS_PTS DESC
    limit 20);
