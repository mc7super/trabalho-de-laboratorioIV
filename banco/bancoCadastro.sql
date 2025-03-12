CREATE SCHEMA LivrosReceitas;
USE LivrosReceitas;

CREATE TABLE Cargo (
    id_cargo SMALLINT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    rg VARCHAR(20) NOT NULL,
    data_ingresso DATE NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    id_cargo SMALLINT,
    nome_fantasia VARCHAR(100),
    FOREIGN KEY (id_cargo) REFERENCES Cargo(id_cargo)
);

CREATE TABLE Categoria (
    id_categoria SMALLINT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Receita (
    id_cozinheiro INT,
    nome VARCHAR(100),
    id_receita INT AUTO_INCREMENT,
    data_criacao DATE NOT NULL,
    id_categoria SMALLINT,
    modo_preparo TEXT NOT NULL,
    qtde_porcao SMALLINT NOT NULL,
    ind_receita_inedita BOOLEAN NOT NULL,
    PRIMARY KEY (id_receita),
    FOREIGN KEY (id_cozinheiro) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE Ingrediente (
    id_ingrediente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE Medida (
    id_medida SMALLINT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Composicao (
    id_cozinheiro INT,
    nome VARCHAR(100),
    id_ingrediente INT,
    id_medida SMALLINT,
    qtd_ingrediente DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_cozinheiro, nome, id_ingrediente),
    FOREIGN KEY (id_cozinheiro) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (nome) REFERENCES Receita(nome),
    FOREIGN KEY (id_ingrediente) REFERENCES Ingrediente(id_ingrediente),
    FOREIGN KEY (id_medida) REFERENCES Medida(id_medida)
);

CREATE TABLE Restaurante (
    idRestaurante INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Referencia (
    id_funcionario INT,
    idRestaurante INT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    PRIMARY KEY (id_funcionario, idRestaurante),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (idRestaurante) REFERENCES Restaurante(idRestaurante)
);

CREATE TABLE Parametro_Sistema (
    mes_producao SMALLINT NOT NULL,
    ano_producao SMALLINT NOT NULL,
    qtde_receita SMALLINT NOT NULL
);

CREATE TABLE Degustacao (
    degustador VARCHAR(100),
    id_cozinheiro INT,
    nome VARCHAR(100),
    data_degustacao DATE NOT NULL,
    nota_degustacao DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (degustador, id_cozinheiro, nome, data_degustacao),
    FOREIGN KEY (id_cozinheiro) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (nome) REFERENCES Receita(nome)
);

CREATE TABLE Livro (
    idLivro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    isbn VARCHAR(20) NOT NULL UNIQUE,
    editor INT NOT NULL,
    FOREIGN KEY (editor) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Publicacao (
    idLivro INT,
    id_cozinheiro INT,
    nome VARCHAR(100),
    PRIMARY KEY (idLivro, id_cozinheiro, nome),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (id_cozinheiro) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (nome) REFERENCES Receita(nome)
);