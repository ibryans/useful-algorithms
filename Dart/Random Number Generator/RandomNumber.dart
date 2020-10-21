import 'dart:io';
import 'dart:math';

/** Classe que exemplifica o uso de números aleatório em dart */
main(List<String> args) {
  print("Geração de números aleatórios");
  print("=============================\n");

  Random gerador = new Random();
  int limite = 1;

  do {
    stdout.write("Digite o limite para o gerador (0 para sair): ");
    limite = int.parse(stdin.readLineSync());

    if (limite > 0) {
      int number = gerador.nextInt(limite);
      print("\nMáximo: $limite");
      print("Número gerado: $number\n");
    }
  } while (limite > 0);
}
