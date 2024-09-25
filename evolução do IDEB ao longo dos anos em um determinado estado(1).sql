SELECT * FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000;

--Analisando a evolução do IDEB ao longo dos anos em um determinado estado
SELECT
  ano,
  avg(ideb) as media_ideb
from
`basedosdados.br_inep_ideb.uf`
where
  sigla_uf = 'SP'
group by
  ano
order by
  ano;
