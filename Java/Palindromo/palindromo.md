Algoritmo que verifica se uma palavra ou frase é um palíndromo

- O que é um palíndromo?

Um palíndromo é uma palavra, frase ou qualquer outra sequência de unidades que tenha a propriedade de poder ser lida tanto da direita para a esquerda como da esquerda para a direita. Num palíndromo, normalmente são desconsiderados os sinais ortográficos, assim como o espaços entre palavras.

Para fazer isso, teremos que seguir alguns passos

- Remover os espaços da string
- Passar todas os caracteres para somente maiúsculo ou minúsculo

```java
palavra = removeSpaces(palavra);
palavra = palavra.toUpperCase();
```

- Percorrer a string com dois ponteiros, um indo da direita para a esquerda, e o outro da esquerda para a direita Assim, vamos comparando os caracteres encontrados em cada ponteiro.
- Se um caracter for diferente do outro na "mesma posição", esta string não é um palíndromo
- Se todos os caracteres forem iguais durante esse percurso, quer dizer que a string é um palíndromo :)

```java
for (i = 0, j = palavra.length()-1; i < palavra.length()-1 && j >= 0; i++, j--) {
  if (palavra.charAt(i) != palavra.charAt(j)) {
    result = false;
  }
}
```
