-- ============================================================
-- PROJETO: API DE AGENDAMENTOS
-- Banco de dados: SQL
-- Status: Em desenvolvimento
--
-- Este arquivo contém a estrutura inicial das tabelas
-- utilizadas pela API.
--
-- O projeto está sendo desenvolvido paralelamente aos estudos
-- de SQL, com o objetivo de aplicar na prática os conceitos
-- aprendidos no curso "SQLite Online: conhecendo instruções SQL".
--
-- ATENÇÃO:
-- A estrutura ainda está em desenvolvimento e poderá sofrer
-- alterações conforme a evolução do projeto.
-- ============================================================


-- ============================================================
-- 1. PROFISSIONAIS
-- ============================================================
-- Armazena os dados dos profissionais que realizarão os serviços.
-- Também contempla informações relacionadas ao expediente e
-- atendimento em domicílio.

CREATE TABLE register_professional (
    id_professional INT PRIMARY KEY,
    usuario_id INT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(150) NOT NULL UNIQUE,
    role VARCHAR(20),
    inicio_expediente TIME,
    fim_expediente TIME,
    atend_domicilio CHAR(1),
    active BOOLEAN DEFAULT (true)
);


-- ============================================================
-- 2. CLIENTES
-- ============================================================
-- Armazena os dados dos clientes que utilizarão a aplicação.
-- A tabela também possui informações relacionadas à acessibilidade
-- e ao usuário responsável pelo acesso ao sistema.

CREATE TABLE register_client (
    id_client INT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(150) NOT NULL UNIQUE,
    Accessibility VARCHAR(150),
    usuario_id 
    id_Address INT,
    role VARCHAR(20),
    active BOOLEAN DEFAULT (true)
);


-- ============================================================
-- 3. ENDEREÇOS DOS ESTABELECIMENTOS
-- ============================================================
-- Armazena os dados de endereço dos estabelecimentos.

CREATE TABLE address_establishment (
    id_establishment_address BIGINT PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(255),
    neighborhood VARCHAR(100),
    zip_code VARCHAR(10),
    city VARCHAR(100),
    state VARCHAR(2),
    number VARCHAR(20),
    complement VARCHAR(255)
);


-- ============================================================
-- 4. ESTABELECIMENTOS
-- ============================================================
-- Armazena as informações dos estabelecimentos onde os serviços
-- poderão ser realizados.

CREATE TABLE establishment (
    id_establishment INT PRIMARY KEY,
    description TEXT,
    name_establishment VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(150) NOT NULL,
    business_hours VARCHAR(200) NOT NULL,
    opening_time TIME,
    closing_time TIME,
    establishment_address BIGINT,
    Address_establishment VARCHAR(150) NOT NULL,
    active BOOLEAN DEFAULT (true)
);


-- ============================================================
-- 5. AGENDAMENTOS
-- ============================================================
-- Registra os agendamentos realizados na aplicação.
-- Relaciona cliente, profissional, serviço e estabelecimento,
-- além de armazenar a data e o horário do atendimento.

CREATE TABLE scheduling (
    id_scheduling INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    professional_id INT NOT NULL,
    service_id INT NOT NULL,
    establishment_id INT NOT NULL,
    scheduling_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- ============================================================
-- 6. USUÁRIOS
-- ============================================================
-- Armazena os dados necessários para autenticação dos usuários
-- da aplicação.

CREATE TABLE users (
    id_users BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    login VARCHAR(100) NOT NULL,
    passwordHash VARCHAR(200) NOT NULL,
    created_At DATETIME,
    active BOOLEAN DEFAULT (true)
);


-- ============================================================
-- 7. SERVIÇOS
-- ============================================================
-- Armazena os serviços oferecidos pelos profissionais,
-- incluindo nome, descrição, valor e duração.

CREATE TABLE service (
    id_service BIGINT PRIMARY KEY,
    name_service VARCHAR(150),
    description TEXT,
    value DECIMAL(4,1),
    duration_min VARCHAR(20),
    profetional_id BIGINT,
    active BOOLEAN DEFAULT (true)
);
