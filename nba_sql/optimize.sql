SELECT * FROM (
select 
CONCAT(PG1,',',PG2, ',',SG1 , ',' , SG2 , ',' , SF1 , ',' , SF2 ,',' , PF1 , ',' , PF2 , ',' , C ) as pgs,
PG1,
PG1_SALARY,
PG2_SALARY,
PG2,
SG1,
SG2,
SF1,
SF2,
PF1,
PF2,
C,
PGS_PTS, 
SGS_PTS,
SFS_PTS,
PFS_PTS,
C_PTS,
PGS_SALARY,
SGS_SALARY,
SFS_SALARY,
PFS_SALARY,
C_SALARY,
PG_AVG_SCORE_COST, 
SG_AVG_SCORE_COST,
SF_AVG_SCORE_COST,
PF_AVG_SCORE_COST,
C_SCORE_COST,
PGS_PTS + SGS_PTS + SFS_PTS + PFS_PTS + C_PTS as lineup_pts,
PGS_SALARY + SGS_SALARY + SFS_SALARY + PFS_SALARY + C_SALARY as lineup_cost 
from pgs_v as pgs
cross join (select SG1, SG2, SG_AVG_SCORE_COST, SGS_PTS, SGS_SALARY from sgs_v) sgs
cross join (select SF1, SF2, SF_AVG_SCORE_COST, SFS_PTS, SFS_SALARY from sfs_v) sfs
cross join (select PF1, PF2, PF_AVG_SCORE_COST, PFS_PTS, PFS_SALARY from pfs_v) pfs
cross join (select C, C_SCORE_COST, C_PTS, C_SALARY from cs_v) cs) as lineup
where lineup_cost <=60000 and
PF1 !='1399'
and PF2 != '1399'
order by lineup_cost DESC , lineup_pts DESC
