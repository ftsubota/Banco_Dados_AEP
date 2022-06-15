/*esta tabela servirá para realizar o cadastro do funcionário
e atribuir o cargo, para gerenciar o nível de permissão necessário*/
create table funcionario(
id int not null primary key,
nome varchar (20) not null,
cargo varchar (15) not null,
loginFuncionario varchar (10),
senhaFuncionario nvarchar);

--nesta tabela irá conter o cadastro dos produtos vendidos na loja.
create table produtos (
id int primary key not null,
nomeProd varchar (30) not null,
categoriaProd varchar (20) null,
corProd varchar (10) null,
valorUnitProd numeric (10,2) not null default '0.00',
QtdeProd int not null,
statusProd char(1) default 'disponível''indisponível'
);

/*nesta tabela irá conter todas as compras de produtos efetuadas para
a loja, e o controle de produtos inseridos na tabela ESTOQUE será feito por meio de triggers*/
create table entrada_produto_estoque(
id int primary key not null,
nomeProd varchar (30) not null,
codProd int not null,
qtdeProd int not null,
valorUnitProd numeric (10,2) null default '0.00',
dataEntrada date not null);

/*esta tabela receberá os dados de acordo com a entrada e saída de produtos.
Esta tabela é o resultado das ações de compra e venda de produtos.*/
create table estoque(
id int primary key not null,
codProd int not null,
qtdeProd int not null,
valorUnitProd numeric (10,2) null default '0.00');

/*nesta tabela será gravado todas as saídas de produtos vendidos, e através
de triggers serão aplicados na tabela estoque.*/
create table saida_produto_estoque(
id int primary key not null,
codProd int not null,
qtdeProd int not null,
dataSaida date not null,
valorUnitProd numeric (10,1) not null);

/*O controle de atividades dentro da tabela estoque será feito
através da aplicação Back-End*/
