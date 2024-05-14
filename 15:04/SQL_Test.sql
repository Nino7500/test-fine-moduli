-- Antonino Caserta

-- Creazione della tabella 'utente'
CREATE TABLE utente (
    ID_U INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Cognome VARCHAR(255),
    email VARCHAR(255)UNIQUE,
    password VARCHAR(255)
);

-- Creazione della tabella 'ruolo'
CREATE TABLE ruolo (
    ID_R INT AUTO_INCREMENT PRIMARY KEY,
    TIPOLOGIA ENUM('Admin', 'Utente', 'Docente')
);

-- Creazione della tabella 'utente_ruolo' per relazione Many-to-Many tra 'utente' e 'ruolo'
CREATE TABLE utente_ruolo (
    FK_R INT,
    FK_U INT,
    FOREIGN KEY (FK_R) REFERENCES ruolo(ID_R),
    FOREIGN KEY (FK_U) REFERENCES utente(ID_U),
    PRIMARY KEY (FK_R, FK_U)
);
-- Creazione della tabella 'categoria'
CREATE TABLE categoria (
    ID_CA INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Categoria ENUM('FrontEnd', 'BackEnd', 'FullStack', 'Cybersecurity')
);

-- Creazione della tabella 'Corso'
CREATE TABLE Corso (
    ID_C INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Corso VARCHAR(255),
    Descrizione_breve VARCHAR(255), 
    Descrizione_completa TEXT,
    Durata INT,
    FK_CA INT,
    FOREIGN KEY (FK_CA) REFERENCES categoria(ID_CA)
);

-- Creazione della tabella 'utenti_corsi' per relazione Many-to-Many tra 'utente' e 'Corso'
CREATE TABLE utenti_corsi (
    PK_UC INT AUTO_INCREMENT PRIMARY KEY,
    FK_U INT,
    FK_C INT,
    FOREIGN KEY (FK_U) REFERENCES utente(ID_U),
    FOREIGN KEY (FK_C) REFERENCES Corso(ID_C)
);


