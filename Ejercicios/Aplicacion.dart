//



import 'dart:io';

Map comidas = {
'Primer año':{'ADRIANA CAROLINA HERNANDEZ MONTERROZA':[20,18,15],
'ADRIANA MARCELA REY SANCHEZ':[12,13,13],
'ALEJANDRO ABONDANO ACEVEDO':[14,16,8],
'ALEXANDER CARVAJAL VARGAS':[3,19,10],
'ANDREA CATALINA ACERO CAR':[18,17,17],
'ANDREA LILIANA CRUZ GARCIA':[14,15,12],
'ANDRES FELIPE VILLA MONROY':[16,16,16],
'ANGELA PATRICIA MAHECHA PIÑEROS':[18,14,13],
'ANGELICA LISSETH BLANCO CONCHA':[13,14,18],
'ANGELICA MARIA ROCHA GARCIA':[19,17,20],
'ANGIE TATIANA FERNÁNDEZ MARTÍNEZ':[12,5,8],
'BRIGITE POLANCO RUIZ':[19,19,20],
'CAMILO VILLAMIZAR ARISTIZABAL':[14,14,16]},

'Segundo año':{'CAMILO RODRÍGUEZ BOTERO':[20,18,15],
'CAMILO ALBERTO CORTÉS MONTEJO':[19,19,20],
'CAMILO ENRIQUE GOMEZ RODRIGUEZ':[13,14,18],
'CARLOS ANDRÉS POLO CASTELLANOS':[12,14,3],
'DENY MARCELA MUÑOZ LIZARAZO':[1,14,3],
'GABRIEL FELIPE HERRERA MORENO':[18,13,18],
'GLORIA PATRICIA MENDOZA ALVEAR':[20,0,20],
'LAURA VIVIANA DEL RÍO AYERBE':[11,12,13],
'MARIO FERNANDO GARZÓN MUÑOZ':[9,9,9],
'NATALIA ANDREA GUTIÉRREZ VELASCO':[10,15,15],
'OSCAR FABIAN CASTELLANOS ROJAS':[18,18,20],
'RAFAEL ANDRES ALVAREZ CASTILLO':[13,17,19],
'RICARDO VEGA ZAMBRANO':[19,20,10]},

'Tercer año':{'JOSE GUILLERMO MARIN ZUBIETA':[19,18,17],
'KAREN ELIANA HERNÁNDEZ PULIDO':[9,10,11],
'LAURA CATALINA VARON BUITRAGO':[16,20,8],
'LISETH TATIANA SIERRA VILLAMIL':[15,18,19],
'MARÍA ANGÉLICA BELTRÁN CASTILLO':[11,16,13],
'MÓNICA ALEXANDRA CAMACHO AMAYA':[15,13,12],
'NATALIA PUENTES PERDOMO':[20,13,14],
'OLGA VIVIANA OVALLE SOLANO':[14,15,13],
'PABLO URIBE ANTIA':[19,19,14],
'RICARDO VEGA ZAMBRANO':[11,6,7],
'SEBASTIÁN IREGUI GALEANO':[19,18,17],
'YIRIAM LILIAM OCHOA SABOGAL':[14,16,13],
'YURI CATALINA SALAZAR ARISTIZABAL':[17,2,13]},

'Cuarto año':{'CAMILO RODRÍGUEZ BOTERO':[10,11,12],
'ALEXANDER CARVAJAL VARGAS':[15,16,17],
'ANGELICA LISSETH BLANCO CONCHA':[15,12,8],
'CAMILO RODRÍGUEZ BOTERO':[2,17,13],
'CLAUDIA LILIANA TORRES FRIAS':[14,4,13],
'DANIELA HERNÁNDEZ BRAVO':[1,1,18],
'DIANA CAROLINA LOPEZ RODRIGUEZ':[2,10,20],
'ESTEWIL CARLOS QUESADA CALDERÍN':[14,18,13],
'GABRIEL MAURICIO NIETO BUSTOS':[5,12,9],
'HUGO ANDRÉS CAMARGO VARGAS':[4,7,15],
'JENNY VIVIANA MONCALEANO PRECIADO':[6,13,20],
'JUAN CAMILO ORTEGA PEÑA':[3,7,19],
'LAURA CATALINA VARON BUITRAGO':[17,2,1]},

'Quinto año':{'DIANA CAROLINA LOPEZ RODRIGUEZ':[13,10,8],
'ESTEWIL CARLOS QUESADA CALDERÍN':[4,3,7],
'IVÁN DAVID CORAL BURBANO':[5,2,7],
'JORGE ESTEBAN REY BOTERO':[13,12,11],
'JULIAN LEONARDO SANCHEZ PRADA':[17,20,13],
'LAURA DIAZ MEJIA':[19,20,18],
'LISETH TATIANA SIERRA VILLAMIL':[10,10,20],
'MARIA JOSÉ GARCÍA MORA':[16,20,13],
'MARIA NATALIA CERVANTES LUNA':[15,18,19],
'OSCAR DAVID COLMENARES BARBUDO':[12,12,12],
'SANDRA XIMENA GARCÉS PARRA':[10,10,12],
'YURANY CATALINA CIFUENTES MENDEZ':[20,17,19],
'YURI CATALINA SALAZAR ARISTIZABAL':[18,20,10]}};
//Se creo nuestra lista tridimensional 

void main(){
  bool estado=true;
  //Se crea un booleano incializado en true para usarlo en un bucle
  opciones nuevo = new opciones();
  //Se crea un objeto con el nombre nuevo con la clase opciones creada mas abajo
  print("====Sistema estudiantil====");
  print("Ingrese el numero correspondiente a su opcion:");
  while(estado){
    print("\n1)Ver notas de un estudiante\n"+
    "2)Ver listado de estudiantes\n3)Ver aulas\n4)salir");
    String opcion = stdin.readLineSync();
    //Se recibe la opcion elegida
    switch(opcion){
      case '1':
        nuevo.Notas();
        //Usa el objeto nuevo y llama al metodo notas
        break;
      case '2':
        nuevo.Listado();
        //Usa el objeto nuevo y llama al metodo listado
        break;
      case '3':
        nuevo.Aulas();
        //Usa el objeto nuevo y llama al metodo aulas
        break;
      case '4':
        print('Sesion cerrada');
        estado=false;
        //El valor de la variable estado cambia a false terminando el bucle
        break;
    }
  }
}
//El main solo se encarga de llamar a la clase y sus metodos
class opciones{

  void Listado(){
    for (var k=0; k<comidas.keys.toList().length; k++){
    //Incia un bucle for para ver el largo de una lista creada con las cadenas
      print('==============================================================');
      print(comidas.keys.toList()[k]+':');
      //Escribe el salon actual en el que se encuentra el bucle
      print('==============================================================');
      for (var i=0; i<comidas[comidas.keys.toList()[k]].keys.toList().length; i++){
        print(comidas[comidas.keys.toList()[k]].keys.toList()[i]);
        //Escribe el alumno actual en el que se encuentra el bucle
      }
    }    
  }
  //metodo para ver todos los estudiantes existentes
  void Aulas(){
    print('==============================================================');
    print('Aulas:');
    for (var k=0; k<comidas.keys.toList().length; k++){
    //Incia un bucle for para ver el largo de una lista creada con las cadenas
      print(comidas.keys.toList()[k]);
      //Escribe el aula actual en la que se encuentra
    }
    print('==============================================================');
  }
  //metodo para ver todas las aulas
  void Notas(){
    print('\nEscriba el nombre correspondiente al aula del estudiante, opciones:');
    for (var k=0; k<comidas.keys.toList().length; k++){
      print(comidas.keys.toList()[k]);
      //Escribe como opciones las aulas
    }
    print('\nEscriba el numero de orden correspondiente al estudiante:');
    String aula = stdin.readLineSync();
    for (var k=0; k<comidas[aula].keys.toList().length; k++){
    //Se crea una lista de los estudiantes en el aula elegida y con ella el limite de un bucle
      print((int.parse(k.toString())+1).toString()+') '+comidas[aula].keys.toList()[k]);
      //Se escriben los estudiantes en dicha lista y se colocan como opciones
    }
    String numero = stdin.readLineSync();
    print('==============================================================');
    print('Alumno: '+comidas[aula].keys.toList()[int.parse(numero)-1]);
    //Se escribe el nombre del alumno elegido
    print('==============================================================');
    print('Notas:');
    print('Matematica: '+comidas[aula][comidas[aula].keys.toList()[int.parse(numero)-1]][0].toString());
    //Se escribe la primera nota
    print('Introducion a la computación: '+comidas[aula][comidas[aula].keys.toList()[int.parse(numero)-1]][1].toString());
    //Se escribe la segunda nota
    print('Fundamentos de la programación: '+comidas[aula][comidas[aula].keys.toList()[int.parse(numero)-1]][2].toString());
    //Se escribe la tercera nota
    print('==============================================================');   
  }
  //metodo para ver las notas de un estudiante
}
