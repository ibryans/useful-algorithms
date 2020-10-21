Gera um número inteiro aleatório na linguagem dart

- Primeira coisa: Faça o import da biblioteca 'math' do dart. `import 'dart:math'`
- Use a classe `Random` para ter acesso as funcionalidades.
- Para criar uma instância de um gerador, use o construtor `new Random()`.
- Para gerar um número aleatório, é necessário a função `Random.nextInt(lim)`, sendo `lim` o valor máximo a ser gerado.

```dart
Random generator = new Random();
int lim = 100;
int number = generator.nextInt(lim);
```
