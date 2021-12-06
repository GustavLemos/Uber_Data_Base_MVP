CREATE TABLE `uber_database`.`passageiro`(
`id_passageiro` INT NOT NULL AUTO_INCREMENT,
`nome` varchar(40) not null,
`cpf` DOUBLE not null,
`idade` INT not null,
`email` varchar(80) not null,
`numero_viagens` INT not null,
`tefone_movel` DOUBLE not null,
`cupom_desconto` INT,
`id_cartao` INT,
FOREIGN KEY (`id_cartao`) REFERENCES cartao_passageiro(`id_cartao_passageiro`),
PRIMARY KEY (`id_passageiro`)
);