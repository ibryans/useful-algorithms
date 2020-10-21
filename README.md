# useful-algorithms
Repositório para usar e adicionar alguns algoritmos qualquer linguagem de programação, que podem ser muito úteis para qualquer tipo de projeto.

## Como participar?

- Faça um fork do projeto;
- Use a pasta com o nome da linguagem do algoritmo que você esteja desenvolvendo e crie os arquivos dentro dela
- Se ainda não tiver uma pasta da sua linguagem escolhida, crie uma e desenvolva seu programa dentro dela;
- Faça um pull request para o repositório original;
- Espere pela aprovação de um contribuidor e Voilà!

## Template

Você pode enviar seu algoritmo de diversas maneiras. A maneira mais recomendada é com 2 arquivos, sendo um deles um markdown (.md) com uma explicação de seu algoritmo, e o outro com o algoritmo em si na linguagem utilizada. Assim fica mais intuitivo de alguém entender o que foi feito.
No arquivo .md você pode colocar trechos do algoritmo para a explicação

### Exemplo (pegado do [30-seconds-of-code](https://github.com/30-seconds/30-seconds-of-code/blob/master/snippets/CSVToArray.md)):

Converts a comma-separated values (CSV) string to a 2D array.

- Use `Array.prototype.slice()` and `Array.prototype.indexOf('\n')` to remove the first row (title row) if `omitFirstRow` is `true`.
- Use `String.prototype.split('\n')` to create a string for each row, then `String.prototype.split(delimiter)` to separate the values in each row.
- Omit the second argument, `delimiter`, to use a default delimiter of `,`.
- Omit the third argument, `omitFirstRow`, to include the first row (title row) of the CSV string.

```js
const CSVToArray = (data, delimiter = ',', omitFirstRow = false) =>
  data
    .slice(omitFirstRow ? data.indexOf('\n') + 1 : 0)
    .split('\n')
    .map(v => v.split(delimiter));
```