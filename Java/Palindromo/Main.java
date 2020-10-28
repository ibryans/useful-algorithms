import java.util.Scanner;

class Main {

  public static String removeSpaces(String palavra) {
    return palavra.replaceAll("\\s", "");
  }

  // Verificando se a string é um palíndromo
  public static boolean isPalindrome(String palavra) {
    int i, j;
    boolean result = true;

    palavra = removeSpaces(palavra);
    palavra = palavra.toUpperCase();

    for (i = 0, j = palavra.length()-1; i < palavra.length()-1 && j >= 0; i++, j--) {
      if (palavra.charAt(i) != palavra.charAt(j)) {
          result = false;
      }
    }

    return result;
  }

  public static void main(String[] args) {
    Scanner entrada = new Scanner(System.in);
    String palavra;

    do {
      palavra = entrada.nextLine();
      if (!palavra.equals("FIM")) {
        System.out.println(
          isPalindrome(palavra) 
          ? "SIM"
          : "NÃO"
        );
      }
    } while (!palavra.equals("FIM"));

    entrada.close();
  }
}