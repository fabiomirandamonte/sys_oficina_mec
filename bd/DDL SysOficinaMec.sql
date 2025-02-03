create table cliente (
	id int not null auto_increment,
	nome varchar(100) not null,
	cpf varchar(11) not null unique,
	telefone int not null,
	email varchar(50) not null,
	endereco varchar(70) not null,
	primary key(id);
)

/*
 * adicionado o campo endereco:
 * alter table cliente
add endereco varchar(70) not null;*/

create table veiculo (
	id int not null auto_increment,
	cliente_id int not null,
	placa varchar(7) not null unique,
	modelo varchar(20) not null,
	marca varchar(20) not null,
	ano int not null,
	primary key (id),
	foreign key (cliente_id) references cliente (id)	
);

create table mecanicos (
	id int not null auto_increment,
	nome varchar(100) not null,
	endereco varchar(70) not null,
	especialidade varchar(50) not null,
	primary key(id)
);

create table pecas (
	id int not null auto_increment,
	descricao varchar(100) not null,
	valor int not null,
	primary key(id)
);

create table ordens_servico (
	id int not null auto_increment,
	veiculo_id int not null,
	data_emissao date not null,
	data_previsao_entrega date as (date_add(data_emissao, interval 7 day)) stored,
	valor_total int not null,
	status enum('não iniciada', 'em andamento', 'concluído') not null default 'não iniciada',
	primary key(id),
	foreign key (veiculo_id) references veiculo (id)
);

create table servicos (
	id int not null auto_increment,
	descricao varchar(255) not null,
	valor int not null,
	primary key(id)
);

create table ordem_servico_servicos (	
	id int not null auto_increment,
	ordens_servico_id int not null, 
	servicos_id int not null,
	primary key(id),
	foreign key (ordens_servico_id) references ordens_servico (id),
	foreign key (servicos_id) references servicos (id),
	quantidade int not null
);

create table ordem_servico_pecas (
	id int not null auto_increment,
	ordem_servico_id int not null,
	peca_id int not null,
	quantidade int not null,
	primary key(id),
	foreign key (ordem_servico_id) references ordens_servico (id),
	foreign key (peca_id) references pecas (id)
);

create table ordem_servico_mecanicos (
	id int not null auto_increment,
	ordens_servico_id int not null,
	mecanico_id int not null,
	papel varchar(50) default 'princiap',
	primary key(id),
	foreign key (ordens_servico_id) references ordens_servico (id),
	foreign key (mecanico_id) references mecanicos (id)
)
