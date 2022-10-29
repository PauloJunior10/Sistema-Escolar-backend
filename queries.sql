CREATE TABLE IF NOT EXISTS TURMA(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
data_inicio DATE NOT NULL,
data_fim DATE NOT NULL,
modulo INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS ESTUDANTE(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
data_nasc DATE NOT NULL,
turma_id INT NOT NULL,
FOREIGN KEY(turma_id) REFERENCES TURMA(id)
);

CREATE TABLE IF NOT EXISTS PASSATEMPO(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE ESTUDANTE_PASSATEMPO(
estudante_id INT NOT NULL,
passatempo_id INT NOT NULL,
PRIMARY KEY (estudante_id, passatempo_id),
FOREIGN KEY (estudante_id) REFERENCES ESTUDANTE(id),
FOREIGN KEY (passatempo_id) REFERENCES PASSATEMPO (id)
);


CREATE TABLE IF NOT EXISTS DOCENTE(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
data_nasc DATE NOT NULL,
turma_id INT NOT NULL,
FOREIGN KEY(turma_id) REFERENCES TURMA(id)
);

CREATE TABLE IF NOT EXISTS ESPECIALIDADE(
id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE DOCENTE_ESPECIALIDADE(
docente_id INT NOT NULL,
especialidade_id INT NOT NULL,
PRIMARY KEY (docente_id, especialidade_id),
FOREIGN KEY (docente_id) REFERENCES DOCENTE(id),
FOREIGN KEY (especialidade_id) REFERENCES ESPECIALIDADE (id)
);

