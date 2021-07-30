import 'dart:io';

void main() {
	print('Tabla de multiplicar personalizada para un valor');
  //Variables
  print('Ingrese el multiplicando');
  String num = stdin.readLineSync(); int num1= int.parse(num);
  print('Ingresar rango de multiplicadores');
  print('mínimo'); //Mínimo m
  String m = stdin.readLineSync(); int m1= int.parse(m);
  print('máximo'); //Máximo n
  String n = stdin.readLineSync(); int n1=int.parse(n);
  //Imprimir Tabla
  print('Tabla ');
  for(; m1<=n1; m1++){
    print('${num1} X ${m1} = ${num1*m1} ');
  }
}
