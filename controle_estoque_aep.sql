/*esta tabela servir� para realizar o cadastro do funcion�rio
e atribuir o cargo, para gerenciar o n�vel de permiss�o necess�rio*/
create table funcionario(
id int not null primary key,
nome varchar (20) not null,
cargo varchar (15) not null,
loginFuncionario varchar (10),
senhaFuncionario nvarchar);

--nesta tabela ir� conter o cadastro dos produtos vendidos na loja.
create table produtos (
id int primary key not null,
nomeProd varchar (30) not null,
categoriaProd varchar (20) null,
corProd varchar (10) null,
valorUnitProd numeric (10,2) not null default '0.00',
QtdeProd int not null,
statusProd char(1) default 'dispon�vel''indispon�vel'
);

/*nesta tabela ir� conter todas as compras de produtos efetuadas para
a loja, e o controle de produtos inseridos na tabela ESTOQUE ser� feito por meio de triggers*/
create table entrada_produto_estoque(
id int primary key not null,
nomeProd varchar (30) not null,
codProd int not null,
qtdeProd int not null,
valorUnitProd numeric (10,2) null default '0.00',
dataEntrada date not null);

/*esta tabela receber� os dados de acordo com a entrada e sa�da de produtos.
Esta tabela � o resultado das a��es de compra e venda de produtos.*/
create table estoque(
id int primary key not null,
codProd int not null,
qtdeProd int not null,
valorUnitProd numeric (10,2) null default '0.00');

/*nesta tabela ser� gravado todas as sa�das de produtos vendidos, e atrav�s
de triggers ser�o aplicados na tabela estoque.*/
create table saida_produto_estoque(
id int primary key not null,
codProd int not null,
qtdeProd int not null,
dataSaida date not null,
valorUnitProd numeric (10,1) not null);

/*O controle de atividades dentro da tabela estoque ser� feito
atrav�s da aplica��o Back-End*/