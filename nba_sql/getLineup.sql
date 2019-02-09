select * from player_detail pd
inner join player p on pd.player_id = p.id
where  pd.id in (1443,1561,1508,1562,1550,1551,1467,1545,1450)
