CREATE DATABASE sistema_cartao

-Comando para criar uma tabela titular, relativa à classe Titular no Java

CREATE TABLE titular(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	documento CHAR(11),
	numero INT,
	validade DATE,
	limite DOUBLE,
	saldo DOUBLE,
	fatura DOUBLE
);
-Comando para inserir um novo registro na tabela, com os dados lidos pelo sistema

	INSERT INTO titular (nome, documento, numero, validade, limite, saldo, fatura) values (?,?,?,?,?,?,?)

-Comando para selecionar um registro da tabela, pelo documento passado pelo usuário. é usado quando se precisa alterar um registro da tabela
	
	Select * from titular WHERE documento = ?

-Comando pra atualizar o saldo e a fatura de um registro da tabela, pelo documento passado pelo usuário. é utilizado sempre que houve uma transação feita


	UPDATE titular SET saldo = ?, fatura = ? WHERE documento = ?


-Comando para retornar o saldo, pelo documento passado

	Select  saldo from titular WHERE documento = ?

-Comando pra criar uma tabela dependente, relativa à classe homônima do Java
	CREATE TABLE dependente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	documento CHAR(11),
	numero INT,
	validade DATE,
	limite DOUBLE,
	saldo DOUBLE,
	fatura DOUBLE,
	titular VARCHAR(50)
);

-Comando pra inserir um cartão do dependente. O nome do titular é resgatado pelo documento, na tabela titular. Os demais campos são preenchidos pelo usuário

	INSERT INTO dependente (nome, documento, numero, validade, limite, saldo, fatura, titular) values (?,?,?,?,?,?,?,?)


-Comando para selecionar um registro da tabela, pelo documento passado pelo usuário. é usado quando se precisa alterar um registro da tabela
	 Select * from dependente WHERE documento = ?

-Comando pra atualizar o saldo e a fatura de um registro da tabela, pelo documento passado pelo usuário. é utilizado sempre que houve uma transação feita

	UPDATE dependente SET saldo = ?, fatura = ? WHERE documento = ?
-Comando para criar uma tabela venda, para armazenar as transações feitas

	 CREATE TABLE venda(
	id INT PRIMARY KEY AUTO_INCREMENT,
	valor DOUBLE,
	local VARCHAR(50),
	cpf_cliente CHAR(11)
	
);

-Comando pra inserir uma venda, é perguntado ao usuário o documento do cartão a realizar a compra. 

	INSERT INTO venda (valor, local, cpf_cliente) values (?,?,?)

-Comando para retornar o saldo, pelo documento passado

	Select saldo from dependente WHERE documento = ?


-Comando pra retornar vendas de um cartão especifico
	SELECT valor, local FROM venda WHERE cpf_cliente = ?