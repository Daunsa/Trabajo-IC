import'dart:io';

int Factorial(int x){
  int factorial=1;
  int a=1;
  for(a=2; a<=x;a++){
    factorial=factorial*a;
  }
  return factorial;
}

void main() {
  print('Ingese el entero positivo a evaluar:');
  String numero = stdin.readLineSync();int num=int.parse(numero); 
  if(num==1||num==0){
    print("factorial es 1") ;
  }
  else{
    print("El factorial de su número $numero es ${Factorial(num)}");
  }
}
