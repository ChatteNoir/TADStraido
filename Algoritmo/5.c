#include <stdio.h>
int menor(int a, int b){
	int m;
	m = b;
	if (a>b)
		m = b;
	return m;
}
int main (int argc, char ** argv){
	int num1, num2, resultado;
	scanf ("%d", &num1);
	scanf ("%d", &num2);
	resultado = menor(num1, num2);
	printf("%d", resultado);
	return 0;
}