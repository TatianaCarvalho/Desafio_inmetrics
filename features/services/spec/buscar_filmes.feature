#language:pt
#encoding:utf-8

Funcionalidade: Buscar Filmes
Eu como usuário preciso buscar filmes

@buscarfilmes
Esquema do Cenário: Buscar filmes com diretor e produtor
Dado que chamo serviço apifilms selecionando "<director>" e "<producer>"
E tenho status 200 
Então tenho uma lista de filmes personalisada por diretor e produtor
    Exemplos:
        | director     | producer      |
        | George Lucas | Rick McCallum |




