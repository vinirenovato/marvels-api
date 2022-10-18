# PROJECT MARVELS API
Projeto de automação de testes de APIs Rest, desenvolvido para o teste de avaliação técnica do Bexs Banco utilizando as tecnologias:
 
 - Ruby
 - Cucumber
 - HTTParty
 
 ## 1.1. PRE REQUISITO DO PROJETO
 Ter instalado na máquina a versão do ruby mais recente
 
 É necessário  efetuar os seguintes comandos dentro do diretório do projeto **marvels-api** após baixar o mesmo
 ```sh
   gem install bundler
   bundle install
 ```

## 1.2 COMO EXECUTAR CENÁRIOS EXISTENTES
**Execução via CUCUMBER**

Para executar algum cenário basta que você esteja na raiz do projeto pelo terminal e insira o seguinte comando:

Cucumber:
```
cucumber -t <TAG>

Exemplo:
cucumber -t @api_marvel_public    
```