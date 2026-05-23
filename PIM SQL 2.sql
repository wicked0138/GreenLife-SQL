
USE greenlife_db;


DROP TABLE IF EXISTS consultas;


CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_email VARCHAR(100) NOT NULL,
    paciente_nome VARCHAR(100) NOT NULL,
    medico VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    periodo_pref VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pendente',
    data_consulta DATE NULL,
    horario TIME NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DESCRIBE consultas;