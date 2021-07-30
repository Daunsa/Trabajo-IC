import'dart:io';
import 'dart:math';
void main() {
  double divisores = 0, a = 1;
  print('Ingese el número entero positivo a evaluar:');
  String numero = stdin.readLineSync(); 
  
  if(int.parse(numero)==1||int.parse(numero)==0){
    print("su número no pertenece a los primos o cumpuestos ") ;
  }
  else{
    for (a = 1; a <= sqrt(int.parse(numero)); a++) {
      if (int.parse(numero) % a == 0) {
      divisores++;
      }
    }
    if (divisores == 1) {
      print("Su número $numero es primo");
    } 
    else {
      print("Su número $numero es compuesto");
    }
  }
}
