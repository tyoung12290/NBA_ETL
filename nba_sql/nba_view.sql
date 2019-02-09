
CREATE OR REPLACE VIEW players_v AS
    (SELECT 
        pd.id,
        pd.player_id,
        p.first_name,
        p.last_name,
        p.pos,
        pd.salary,
        pd.proj_score
    FROM
        player_detail pd
            INNER JOIN
        player p ON pd.player_id = p.id
    WHERE
        pd.date > '2019-02-08');