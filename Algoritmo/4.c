#include <stdio.h>
int somar(int a, int b){
	int c;
	c = a + b;
	return c;
}
int main (int argc, char ** argv){
	int num1, num2, resultado;
	scanf ("%d", &num1);
	scanf ("%d", &num2);
	resultado = somar(num1, num2);
	printf ("%d", resultado);
	return 0;
}