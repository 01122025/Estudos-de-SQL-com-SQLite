-- funções de update no código --
UPDATE register_professional SET role = 'PROFISSIONAL' WHERE role = 'CLIENTE';

UPDATE register_professional SET id_professional = 10 WHERE id_professional = 102;
UPDATE register_professional SET active = TRUE;
-- aqui usamos o Update com mais de uma coluna, lembrado que não conseguimos fazer atualização mais de uma linha ---
UPDATE register_professional SET name = 'Jacilene Maria Alves de Miranda', email = 'JacileneMariaAlves@gmail.com' Where id_professional = 205;

-- funções de DELETE no código --

-- usando o cláusula de Delete -- 
DELETE FROM register_professional WHERE id_professional = '10';

-- funções de operador lógico maior >, menor <, != diferente de, 
DELETE FROM register_professional WHERE id_professional > 10;