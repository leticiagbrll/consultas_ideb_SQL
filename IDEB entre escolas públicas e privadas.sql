SELECT * FROM `basedosdados.br_inep_ideb.brasil` LIMIT 1000;

--Comparando o IDEB entre escolas públicas e privadas
SELECT
avg(case when rede = 'privada' then ideb end) as Media_Privada,
avg(case when rede = 'publica' then ideb end) as Media_Publica
FROM `basedosdados.br_inep_ideb.brasil`
WHERE rede in ('privada','publica');

--Teste 2 
SELECT rede,
avg(ideb) as Media
FROM `basedosdados.br_inep_ideb.brasil`
WHERE rede in ('privada','publica')
GROUP BY rede;