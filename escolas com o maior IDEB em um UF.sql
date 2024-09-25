SELECT * FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000;

--Identificando as escolas com o maior IDEB em um UF
SELECT
  rede,
  ideb
from
`basedosdados.br_inep_ideb.uf`
where
  sigla_uf = 'BA'
  and ano = 2023
order by
  ideb desc
limit 100;
