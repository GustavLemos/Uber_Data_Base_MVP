/*1-Select top 3 passageiros com mais viagens para premiar com cumpom de desconto*/
SELECT `id_passageiro`,`nome`,`numero_viagens`,`tefone_movel`,`cupom_desconto`  
FROM `uber_database`.`passageiro` AS A
WHERE A.cupom_desconto IS NULL
ORDER BY A.numero_viagens DESC 
LIMIT 3;

/*2-Select 3 passageiros com menos viagens mais excluindo os com 0 viagens(usuarios novos)
Para mandar cupom de incentivo de uso*/
SELECT `id_passageiro`,`nome`,`numero_viagens`,`tefone_movel`,`cupom_desconto`  
FROM `uber_database`.`passageiro` AS A
WHERE A.cupom_desconto IS NULL 
AND A.numero_viagens > 0
ORDER BY A.numero_viagens 
LIMIT 3;

/*3-Select motoristas ativos*/
SELECT * FROM `uber_database`.`motorista` WHERE ano_demissao IS NOT NULL;

/*4-Join motorista com cota_motorista(View de operação bancária do que mais fez viagens para baixo)*/
SELECT * FROM `uber_database`.`motorista` AS A 
JOIN `uber_database`.`conta_motorista` AS B ON A.id_conta_motorista = B.id_conta_motorista
WHERE A.ano_demissao IS NULL
ORDER BY A.numero_viagens DESC;

/*5-Select viagem join motorista e join passageiro(View que tem todas informações de viagem)*/
SELECT * FROM `uber_database`.`motorista` AS A 
JOIN `uber_database`.`viagem` AS B ON A.id_motorista = B.id_motorista
JOIN `uber_database`.`passageiro` AS C ON B.id_passageiro = C.id_passageiro
JOIN `uber_database`.`veiculo` AS D ON A.id_motorista = D.id_motorista
ORDER BY B.data DESC;

/*6-Select para view de operação de cobrança do passageiro sobre a viagem*/
SELECT * FROM `uber_database`.`passageiro` AS A 
JOIN `uber_database`.`viagem` AS B ON A.id_passageiro = B.id_passageiro
JOIN `uber_database`.`cartao_passageiro` AS C ON A.id_cartao = C.id_cartao_passageiro
ORDER BY B.data DESC;

/*7-Select count motorista próximo com origem e destino definido pelo passageiro no app,
os primeiros digitos do cep ira procurar um motorista presente no bairro*/
SELECT * FROM `uber_database`.`motorista` AS A
WHERE A.cep LIKE '30535%' 
LIMIT 1;

/*8- Select count numero de viagens*/
SELECT COUNT(1) AS numero_viagens_todos_usuarios FROM `uber_database`.`viagem`;

/*9- Select viagens que envolvem origem ou destino no Bairro em que se Localiza a PUC Unidade Coreu*/
SELECT COUNT(1) AS numero_viagens_usuarios_bairro_coreu FROM `uber_database`.`viagem`
WHERE cep_origem LIKE '30535%' or cep_destino LIKE '30535%'; 

/*10- Select dinheiro total movimentado em viagens*/
SELECT SUM(IF(valor_alterado IS NOT NULL,valor_alterado,valor_original)) AS valor_acumulado_bruto FROM `uber_database`.`viagem`; 



