CREATE TABLE `uber_database`.`cartao_passageiro`(
`id_cartao_passageiro` INT NOT NULL AUTO_INCREMENT,
`numero_banco` INT not null,
`agencia` INT not null,
`conta` INT not null,
`numero_cartao_credito` DOUBLE not null,
`cvv` INT not null,
`validade` date not null,
PRIMARY KEY (`id_cartao_passageiro`)
);