CREATE DATABASE eventos;

\c eventos;

CREATE TABLE ingressos (
    id SERIAL PRIMARY KEY,
    evento VARCHAR(255) NOT NULL,
    local_evento VARCHAR(255) NOT NULL,
    data_evento DATE NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco_ingresso DECIMAL(10,2),
    quantidade_disponivel INTEGER NOT NULL
)

INSERT INTO ingressos (evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel) VALUES
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Pista', 500.00, 1000),
('ColdPlay', 'Allianz Parque', '2025-12-02', 'Pista Vip', 600.00, 200),
('ColdPlay', 'Allianz Parque', '2025-12-03', 'Camarote', 800.00, 100);

INSERT INTO ingressos (evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel) VALUES
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Pista', 500.00, 200);

INSERT INTO ingressos (evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel) VALUES
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Arquibancada', 200.00, 400);

INSERT INTO ingressos (evento, local_evento, data_evento, categoria, preco_ingresso, quantidade_disponivel) VALUES
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Arquibancada', 300.00, 300);

DELETE FROM ingressos WHERE id = 2;

DELETE FROM ingressos WHERE id = 3;

DROP TABLE ingressos;