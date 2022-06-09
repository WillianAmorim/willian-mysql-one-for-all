SELECT
  u.name AS usuario,
  IF(
    MAX(p.played_date) LIKE '2021%',
    'Usuário ativo',
    'Usuário inativo'
  ) AS condicao_usuario
FROM
  SpotifyClone.user AS u
  INNER JOIN SpotifyClone.played AS p on p.user_id = u.user_id
GROUP BY
  usuario
ORDER BY
  usuario;