import 'dart:io';
void main() {
  List Matriz = [];

  for(var i=0;i<3;i++){
    for(var a=0;a<3;a++){
    print("Ingrese el valor de la posicion [$i][$a]");
    int numero = int.parse(stdin.readLineSync());
    Matriz.add(numero);   
    }
    print("");
  }
  for(int j=0;j<9;j++){
    stdout.write("${Matriz[j]} ");
    if(j==2||j==5)
    print("");
  }
  int determinante= (Matriz[0]*Matriz[4]*Matriz[8]
  +Matriz[3]*Matriz[7]*Matriz[2]+Matriz[6]*Matriz[1]*Matriz[5])
  -(Matriz[2]*Matriz[4]*Matriz[6]+Matriz[5]*Matriz[7]*Matriz[0]+Matriz[8]*Matriz[1]*Matriz[3]);
  print("");
  print("El determinante es $determinante");

}