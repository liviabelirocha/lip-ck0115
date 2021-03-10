# Questão 03

Implementar, em Oz, um funtor com portas lógicas para simulação de lógica digital, conforme a Seção 4.3.5 do livro-texto. Além disso, desenvolver um circuito de exemplo usando tais portas lógicas (que não sejam circuitos já propostos no livro-texto como exemplo). Para isso, devem pesquisar. O programa principal deve construir esse circuito e fazer testes com entradas definidas pelo aluno.

## Para compilar o funtor

`$ ozc -c logic_functor.oz`

## Para compilar a main

`$ ozc -c main.oz -o main.oza`

## Para rodar a main

`$ ozengine main.oza`

### Resumo

Essas funções de lógica digital são bem simples, elas recebem entradas em formato de stream e retornam o resultado lógico disso, implementados com operações matemáticas que usam apenas 0 e 1. Então, o que é passado na main são os valores das entradas, para o Subtractor são 3, utilizei como exemplo A = 0, B = 1, BorrowIn = 1. No subtractor são realizadas as operações necessárias, e temos o retorno de dois valores, que estão de acordo com a tabela verdade do subtractor.
