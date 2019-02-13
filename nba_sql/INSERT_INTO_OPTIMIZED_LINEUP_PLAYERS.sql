INSERT INTO lineup_optimized_player_detail ( lineup_optimized_id, player_detail_id )
SELECT
  lineup_optimized.id,
  SUBSTRING_INDEX(SUBSTRING_INDEX(lineup_optimized.players, ',', numbers.n), ',', -1) players
from
  (select 1 n union all
   select 2 union all select 3 union all
   select 4 union all select 5 union all select 6 union all select 7 union all select 8 union all select 9) numbers INNER JOIN lineup_optimized
  on CHAR_LENGTH(lineup_optimized.players)
     -CHAR_LENGTH(REPLACE(lineup_optimized.players, ',', ''))>=numbers.n-1
order by
  id, n