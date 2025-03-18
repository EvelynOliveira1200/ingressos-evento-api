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
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Pista', 150.00, 1000),
('ColdPlay', 'Allianz Parque', '2025-12-02', 'Pista Vip', 250.00, 200),
('ColdPlay', 'Allianz Parque', '2025-12-03', 'Camarote', 350.00, 100),
('ColdPlay', 'Allianz Parque', '2025-12-01', 'Arquibancada', 100.00, 400);

DROP TABLE ingressos;