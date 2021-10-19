/**
 * @author ibryans
 * Soma de fatoriais em C++
 */

#include <iostream>
using namespace std;

/** fatorial usando recursividade **/
long fatorial(int n) {
	if (n > 0) 
		return n * fatorial(n-1);
	else 
		return 1;
}

int main() {
	int m, n;

	/** Ler a entrada até o EOF **/
	while(cin >> m && cin >> n)
		cout << fatorial(m) + fatorial(n) << "\n";

	return 0;
}
