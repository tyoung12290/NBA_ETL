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
	t1.salary + t2.salary AS pfS_SALARY
    FROM
        players_v AS t1
    CROSS JOIN players_v AS t2
    WHERE
        t1.id < t2.id AND t2.pos = 'pf'
            AND t1.pos = 'pf'
    order by pf_AVG_SCORE_COST DESC, pfS_SALARY DESC, pfS_PTS DESC
    limit 20);
    
CREATE OR REPLACE VIEW cs_v AS 
( SELECT 
	t1.id AS C,
    t1.proj_score as C_PTS,
    t1.proj_score/(t1.salary/1000) as C_SCORE_COST,
    t1.salary as C_SALARY
    FROM
        players_v AS t1
    WHERE t1.pos = 'C'
    order by C_SCORE_COST DESC, C_SALARY DESC, C_PTS DESC
    limit 20);
