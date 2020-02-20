

void main() {
  
  var contador=100.2;
  int entero=0;
  String ejemplo="ejemplo";
  for (int i = 1; i < 5; i++) {
    print('hello ${contador++} - $ejemplo - ${entero++} - ${ejemplo[i]}');
  }
  
  
  List dinamico=[1,21,2];
  print(dinamico);
  dinamico.add("Hola");
  print(dinamico);
  
  List<int> numeros=[1,21,2];
  print(numeros);
  numeros.add(4);
  print(numeros);

  List <int> numerosV=List(10);
  numerosV[2]=9;
  print(numerosV);
  
  
  List<List<int>> listaListas=List(30);
  print(listaListas);
  
  
  Map <String,dynamic> persona={
    'nombre':'Freddy',
    'edad':25,
    'soltero':true
  };
  print(persona['nombre']);
  print(persona);

  Map <int,String> personaClave={
    1:'Leo',
    2:'25',
    13:'Soltero'
  };
  print(personaClave);
  print(personaClave[13]);

  personaClave.addAll({14:'Adulto'});
  print(personaClave);

  saludar();
  print(saludar_1());
  print(saludo('Juan',28));
  print(saludoImprove('Jose',13,'Soltero'));


  Heroe wolverine =new Heroe ('Wolverine',34);
  print(wolverine);
  print(wolverine.toString());
  
  Villano joker = new Villano('Joker',45);
  print(joker.toString());
  
  Humano human = new Humano();
  print(human.toString());
}



//Constructor Normal
class Heroe {
  String nombre;
  int edad;
  
  Heroe(String nombre, int edad){
    this.nombre=nombre;
    this.edad=edad;
  }
  toString()=> '${this.nombre} - ${this.edad}';
}

//Constructor Abreviado
class Villano{
  String nombre;
  int edad;
  Villano(this.nombre,this.edad);
  toString()=> '$nombre - $edad';
}

//Constructor con valores por defecto
class Humano {
  String nombre;
  int edad;
  
  Humano({String nombre='Sin Nombre', int edad=0}){
    this.nombre=nombre;
    this.edad=edad;
  }
  toString()=> '${this.nombre} - ${this.edad}';
}



//Funciones Ejemplo
void saludar(){
  print('Fucion');
}

int saludar_1(){
  return 1234347653456;
}

// Funcion con interpolacion de variables
String saludo(String nombre, int edad){
  return '$nombre - $edad ';
}

//Funcion Corta con interpolacion de Variables
String saludoImprove (String nombre, int edad, String estado)=> '$nombre - $edad - $estado';
