## TESTE AUTOMATIZADO - COMPASSO UOL

## Pre Condição
1. Ruby instalado
> Documentação para instalação do Ruby: https://www.ruby-lang.org/pt/documentation/installation/

#Inslando o BUNDLER
```sh
    gem install bundler
```
# Instalando as Gems
```sh
    bundler install
```

# Executar automação no ambiente desejado
```bash
cucumber -p qa
```

# Executar automação de uma funcionalidade especifica utilizar as seguintes TAGs
```bash
cucumber -p qa --t @fipe
```
Para criar #tags# nos cenários inclua o @NomeTag em cima do cenário dentro do arquivo .feature

> Caso deseje criar um novo ambiente é necessário configurar o arquivo env.rb com as URLs e o nome do ambiente, inserir uma lista de usuário no arquivo credentials.rb (criar a lista com mesmo nome do ambiente criado no env) 

# PARA CONTRIBUIR
1. Crie um branch
2. Crie ou edite os cenários conforme projeto desejado
3. Só faça o MERGE com a MASTER se tiver certeza que suas alterações não quebraram os testes