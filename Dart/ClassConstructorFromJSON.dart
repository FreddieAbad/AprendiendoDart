import 'dart:convert';

void main() {
  
  
  Villano joker = new Villano('Joker',45);
  print(joker.toString());
  
  print(joker.nombre);
  final logan='{"nombre":"logan", "edad":35}';
  final parsedJson= json.decode(logan);
  print(parsedJson);
  //Instanciacion de Objeto a partir de JSON
  final loganJsonO=new Villano.fromJson(parsedJson);
  print(loganJsonO.toString());
  
  
}

//Constructor Abreviado
class Villano{
  String nombre;
  int edad;
  Villano(this.nombre,this.edad);
  toString()=> '$nombre - $edad';
  //Constructor a partir de un JSON
  Villano.fromJson(parsedJson){
    nombre=parsedJson['nombre'];
    edad=parsedJson['edad'];
  }
}


