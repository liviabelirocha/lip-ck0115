# Questão 02

Implementar, em Oz, os códigos de "parsing" da Seção 3.4.8 do livro-texto. O código deve estar encapsulado em um funtor e acessado através do programa principal para realizar o "parsing" de alguns programas de exemplo propostos pelo aluno.

## Para compilar o funtor

`$ ozc -c parsing_functor.oz`

## Para compilar a main

`$ ozc -c main.oz -o main.oza`

## Para rodar a main

`$ ozengine main.oza`

### Resumo

Esse parser aceita como entrada uma sequência de tokens de acordo com a tabela 3.2 dada no livro. Esse parser funciona de forma recursiva, onde o próximo token é quem decide se o programa acaba ou não.

A função chamada na main é a `Prog`, ela recebe como argumento `S1` e `Sn`, onde `S1` é a lista de tokens e `Sn` é a lista após o parsing.

Dentro de `Prog`, as declarações passam pela função `Stat`, onde será avaliado para qual função essa declaração deve ir de acordo com as regras do parser.

Existe também a função `Sequence`, que lida com comparação de sequências, expressões e termos.

As funções que lidam com separadores são `COP`, `EOP` e `TOP`.

E a função `Fact`, como o nome diz, lida com fatores.
