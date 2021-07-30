import 'dart:io';
import 'dart:math';

void main() {
  //Descripcion
  print('Programa que calcula la distancia entre 2 puntos');
  //Variables
  print('Ingrese abscisa del primer punto '); //x1
  String x1s= stdin.readLineSync(); int x1= int.parse(x1s);
  print('Ingrese ordenada del primer punto '); //y1
  String y1s= stdin.readLineSync(); int y1= int.parse(y1s);
  print('Ingrese abscisa del segundo punto '); //x2
  String x2s= stdin.readLineSync(); int x2= int.parse(x2s);
  print('Ingrese ordenada del segundo punto '); //y2
  String y2s= stdin.readLineSync(); int y2= int.parse(y2s);
  //Calculando distancia
  double distancia = sqrt(pow(x2-x1, 2)+ pow(y2-y1, 2));
  //Imprimiendo resultados
  print('La distancia entre ambos puntos es ${distancia}');
}
