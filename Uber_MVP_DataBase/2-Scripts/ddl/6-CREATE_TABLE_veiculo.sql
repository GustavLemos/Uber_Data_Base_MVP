CREATE TABLE `uber_database`.`veiculo`(
`id_veiculo` INT NOT NULL AUTO_INCREMENT,
`marca` varchar(40) not null,
`ano` INT not null,
`status_ipva` varchar(10) not null,
`id_motorista` INT not null,
FOREIGN KEY (`id_motorista`) REFERENCES motorista(`id_motorista`),
PRIMARY KEY (`id_veiculo`)
);