SELECT
  COUNT(DISTINCT m.music_id) AS cancoes,
  COUNT(DISTINCT a.artist_id) AS artistas,
  COUNT(DISTINCT a.album_id) AS albuns
FROM
  SpotifyClone.music AS m
  INNER JOIN SpotifyClone.album AS a;