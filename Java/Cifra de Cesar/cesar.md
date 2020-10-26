Algoritmo que utiliza a cifra de césar para codificar uma string qualquer.

- O que é a cifra de césar?

Em criptografia, a Cifra de César, também conhecida como cifra de troca, código de César ou troca de César, é uma das mais simples e conhecidas técnicas de criptografia. É um tipo de cifra de substituição na qual cada letra do texto é substituída por outra, que se apresenta no alfabeto abaixo dela um número fixo de vezes

Para fazer isso, basta somarmos um número x (que seria a chave) a cada caracter da string.

```java
int key = 3;
return (char) (letter + key);
```

Neste caso estou usando uma chave = 3, mas você pode usar a chave que quiser, desde que o recebedor da mensagem também saiba, para poder decodificar.

```java
String result = "";
for (int i = 0; i < entry.length(); i++) {
    result += encode(entry.charAt(i));
}
```
