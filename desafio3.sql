SELECT
  u.name AS usuario,
  COUNT(p.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(m.duration_seconds) / 60, 2) AS total_minutos
FROM
  SpotifyClone.user AS u
  INNER JOIN SpotifyClone.played AS p ON p.user_id = u.user_id
  INNER JOIN SpotifyClone.music AS m ON m.music_id = p.music_id
GROUP BY
  usuario
ORDER BY
  usuario;