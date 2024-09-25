-- Consultando a tabela
SELECT * FROM `basedosdados.br_inep_ideb.brasil` LIMIT 1000

--Calculando a média do IDEB por estado em um determinado ano
SELECT
  rede,
  avg(ideb) as media_ideb
from 
  `basedosdados.br_inep_ideb.brasil`
where
  ano = 2005
group by
  rede;