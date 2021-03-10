# Questão 01

Implementar, em Oz, os códigos de "desenho de árvores" da Seção 3.4.7 do livro-texto, utilizando a estratégia de determinação da ordem das operações discutida na Seção 4.4. O código deve estar encapsulado dentro de um funtor, e utilizado no programa principal para fazer o desenho de árvores de exemplo propostas pelo aluno. A saída pode ser textualmente ou graficamente, utilizando os recursos do Mozart (e.g. biblioteca QTk).

## Para compilar o funtor

`$ ozc -c tree_functor.oz`

## Para compilar a main

`$ ozc -c main.oz -o main.oza`

## Para rodar a main

`$ ozengine main.oza`

### Resumo

A árvore é definida assim: `tree(key: < Literal > val: < Value > left: < Tree > right: < Tree > )`, onde cada nó é uma folha ou possui até dois filhos.

A função DepthFirst serve para calcular a posição dos nós, seguindo um conjunto de regras:

- Existe uma distância mínima entre cada subárvore;
- Se um nó possui dois filhos, sua posição fica no meio da posição dos seus dois filhos;
- Se um nó possui apenas um filho, ele vai ser posicionado logo abaixo do seu pai;
- A posição vertical de um nó é proporcional ao seu nível.

A função AddXY retorna uma nova árvore idêntica a original, com a diferença de ter dois campos novos X e Y em todos os nós.

Para desenhar a árvore, foram adicionadas também funções que utilizam de uma biblioteca nativa do Oz, a QTk.

No programa final, o primeiro passo é criar uma árvore, depois utilizar a função AddXY para modificá-la, chamar a função DepthFirst para calcular a posição dos nós, e, por fim, chamar a função DrawTree para desenhá-la.
