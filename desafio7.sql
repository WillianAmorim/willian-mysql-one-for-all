SELECT
  a.name AS "artista",
  al.name AS "album",
  COUNT(f.artist_id) AS "seguidores"
FROM
  SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS al ON a.artist_id = al.artist_id
  INNER JOIN SpotifyClone.follow AS f ON f.artist_id = a.artist_id
GROUP BY
  album,
  artista
ORDER BY
  seguidores DESC,
  artista ASC,
  album ASC;