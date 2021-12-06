CREATE TABLE `uber_database`.`motorista`(
`id_motorista` INT NOT NULL AUTO_INCREMENT,
`nome` varchar(40) not null,
`cpf` DOUBLE not null,
`idade` INT not null,
`email` varchar(80) not null,
`numero_viagens` INT not null,
`tefone_movel` DOUBLE not null,
`numero_habilitacao` DOUBLE not null,
`estrelas` INT not null,
`numero_residencia` INT not null,
`rua` varchar(80) not null,
`cep` INT not null,
`ano_admissao` INT not null,
`ano_demissao` INT ,
`id_conta_motorista` INT,
FOREIGN KEY (`id_conta_motorista`) REFERENCES conta_motorista(`id_conta_motorista`),
PRIMARY KEY (`id_motorista`)
);