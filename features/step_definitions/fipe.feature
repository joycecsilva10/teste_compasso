#language: pt

@fipe
Funcionalidade: Consulta fipe
    Sendo usuário consumidor da API fipe
    Posso consultar o valor da fipe
    Para saber o valor médio dos veículos

Esquema do Cenário: Consultar fipe
    Dado que tenho os códigos de <marca>, <modelo> e <ano>
    Quando efetuar a requsição na API
    Então é o retornado o valor da fipe do modelo selecionado <mod>

    Exemplos:
    | marca | modelo | ano      | mod                                   |
    | '23'  | '5637' | '2016-1' | 'CRUZE LTZ 1.8 16V FlexPower 4p Aut.' |