SELECT
  a.name AS "artista",
  al.name AS "album"
FROM
  SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS al ON a.artist_id = al.artist_id
WHERE a.name = "Walter Phoenix"
GROUP BY
  album
ORDER BY
  album;