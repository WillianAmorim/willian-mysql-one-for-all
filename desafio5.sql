SELECT
  m.name AS cancao,
  COUNT(p.user_id) AS reproducoes
FROM
  SpotifyClone.music AS m
  INNER JOIN SpotifyClone.played AS p ON m.music_id = p.music_id
GROUP BY
  cancao
ORDER BY
  reproducoes DESC,
  cancao ASC
LIMIT
  2;