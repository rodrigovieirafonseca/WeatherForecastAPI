Passos para execução do WEB API:

1º Abra o Microsoft SQL Server Management Studio;
2º Vá em Arquivo -> Abrir -> Arquivo...;
3º Selecione o arquivo "Create database.sql" e em seguida aperte Executar (F5);
4º Faça o mesmo para procedimento para o arquivo "Create tables.sql";
5º Para povoar a database faça o mesmo procedimento para o arqueivo "CLIMACIDADEGENERATOR.sql";
6º Abra o ClimaTempoSimples.sln, no menu de Gerenciador de Soluções entre em Connected Services;
7º No Banco de Dados do SQL Server clique em Configurar, marque a opção LocalDB do SQL Server Express e clique em Próximo;
8º Em Nome de cadeia de conexão coloque qualquer nome;
9º Em valor de cadeia de conexão clique em "...";
10º Na nova aba, a Fonte de dados selecione Microsoft SQL Server;
11º No Nome do servidor, abra novamente o "Microsoft SQL Server Management Studio" ;
12e Na aba de Conectar ao Servidor copie o nome em "Nome do Servidor";
13º Volte ao visual studio e ensira o Nome do servidor conforme copiado anteriormente;
14º Em autenticação marque a opcao Auteticação do Windows;
15º Marque a opção "Selecionar ou digitar..." e entao seleciona "ClimaTempoSimples;
16º Agora é só executar o programa;