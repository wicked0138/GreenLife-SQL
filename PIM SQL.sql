
USE greenLife_db;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo ENUM('paciente', 'profissional') NOT NULL,
    regiao VARCHAR(50) NOT NULL,
    registro VARCHAR(50) NULL,
    especialidade VARCHAR(100) NULL
);

-- Criar tabela de consultas
CREATE TABLE IF NOT EXISTS consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_email VARCHAR(100) NOT NULL,
    paciente_nome VARCHAR(100) NOT NULL,
    medico VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    periodo_pref VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    data DATE NULL,
    horario TIME NULL
);

SHOW TABLES;
