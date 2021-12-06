CREATE TABLE `uber_database`.`viagem`(
`id_viagem` INT NOT NULL AUTO_INCREMENT,
`duracao_viagem` INT not null,
`valor_original` FLOAT not null,
`valor_alterado` FLOAT,
`relato_reclamacao` varchar(200),
`data` date not null,
`numero_origem` INT not null,
`cep_origem` DOUBLE not null,
`numero_destino` INT not null,
`cep_destino` DOUBLE not null,
`id_motorista` INT not null,
FOREIGN KEY (`id_motorista`) REFERENCES motorista(`id_motorista`),
`id_veiculo` INT not null,
FOREIGN KEY (`id_veiculo`) REFERENCES veiculo(`id_veiculo`),
`id_passageiro` INT not null,
FOREIGN KEY (`id_passageiro`) REFERENCES passageiro(`id_passageiro`),
PRIMARY KEY (`id_viagem`)
);