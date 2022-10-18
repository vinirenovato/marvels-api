#language:pt

@full_smoke
@api_marvel_public
Funcionalidade: API MARVEL PUBLIC
  Eu como usuário do sistema
  Quero que ao consultar os endpoints da API MARVEL PUBLIC
  Sejam retornados os valores corretamente

  Swagger: 'https://developer.marvel.com/docs'

  @stories.get
  Cenário: Validar o endpoint Stories.get
  - O objetivo deste cenário é validar o retorno da lista de alguns dos comics da Marvel

    Dado ter uma massa configurada do endpoint Stories.get
    Quando chamo o endpoint Stories.get
    Entao verifico o retorno do endpoint Stories.get

  @characters.get
  Esquema do Cenário: Validar o endpoint Characters.get
  - O objetivo deste cenário é validar o retorno da informações de algum personagem específico da Marvel

    Dado ter uma massa configurada do endpoint Characters.get para o "<personagem>"
    Quando chamo o endpoint Characters.get
    Entao verifico o retorno do endpoint Characters.get para o "<personagem>"

    Exemplos:
      | personagem      |
      | agents of atlas |
      | agent brand     |
      | balder          |
      | inexistente     |