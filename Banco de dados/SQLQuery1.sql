CREATE TABLE Usuario(
    id_usuario INT NOT NULL IDENTITY(1,1),
    Nome VARCHAR(255),
    Email VARCHAR(255),
    Senha VARCHAR(50),
    Stat VARCHAR(20),
    Endereco VARCHAR(350),
    CPF VARCHAR(11),
    Telefone VARCHAR(14),
    PRIMARY KEY (id_usuario)
);

CREATE TABLE Chamados(
    id_chamado INT IDENTITY(1,1),
    assunto VARCHAR(255),
    descricao_chamado VARCHAR(1000),
    id_usuario INT,
    resposta VARCHAR(1000),
    PRIMARY KEY (id_chamado),
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Transacoes(
    id_transacao INT IDENTITY(1,1),
    item_transacao VARCHAR(50),
    quantidade INT,
    status_transacao VARCHAR(30),
    data_hora DATE,
    id_usuario INT,
    PRIMARY KEY (id_transacao),
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Carteira_Virtual(
    id_carteira INT IDENTITY(1,1),
    Endereco VARCHAR(255),
    id_usuario INT,
    PRIMARY KEY (id_carteira),
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id_usuario)
);


select * from Carteira_Virtual