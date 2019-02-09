CREATE OR REPLACE VIEW sfs_v AS 
( SELECT 
	t1.id AS sf1,
	t2.id AS sf2,
    t1.proj_score as sf1_SCORE,
    t2.proj_score as sf2_SCORE,
    t1.proj_score/(t1.salary/1000) as sf1_SCORE_COST,
    t2.proj_score/(t2.salary/1000) as sf2_SCORE_COST,
    (t1.proj_score/(t1.salary/1000)+t2.proj_score/(t2.salary/1000))/2 as sf_AVG_SCORE_COST,
    t1.salary as sf1_SALARY,
    t2.salary as sf2_SALARY,
	t1.proj_score + t2.proj_score AS sfs_PTS,
	t1.salary + t2.salary AS sfs_SALARY
    FROM
        players_v AS t1
    CROSS JOIN players_v AS t2
    WHERE
        t1.id < t2.id AND t2.pos = 'sf'
            AND t1.pos = 'sf'
    order by sf_AVG_SCORE_COST DESC, sfs_SALARY DESC, sfs_PTS DESC
    limit 20);
