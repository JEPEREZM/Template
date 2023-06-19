CREATE TABLE usuario
(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(25) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    saldo DOUBLE NOT NULL
);

CREATE TABLE movimientos
(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idusuario INTEGER NOT NULL,
    movimiento VARCHAR(25) NOT NULL,
    cantidad DOUBLE NOT NULL,
    FOREIGN KEY (idusuario) references usuario(id)
);