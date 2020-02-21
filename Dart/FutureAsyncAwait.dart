// Futures, Asyn y Await 
/*
 * Async y Await me permite mejorar la funcionalidad y lectura de codigo, el async realiza las tareas de manera asincrona y las tareas que quiero realizar despues de estas seran con await.
 * 
 * IMPORTANTE
 * El await obligatoriamente tiene que estar en una funcion async
 * 
 * Los constructores de una clase no puede ser async
 * 
 * Los futures son como una orden de comida en un restuarante, pido la orden, mientras tanto me siento, voy al bano, etc y despues de n tiempo la orden llega.
 * 
 * Async y Await en el ejemplo de la orden es como pido la orden y mientras hacen la orden hago otras cosas y solo despues de entregar la orden cobro
  
  Asi un future, hace una peticion a httpGet mientras hace otras cosas.
  */
//Retornos futuros
Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4),(){
    return 'Hola Mundo';
  });
}


void main() async{
  print('Estoy pidiendo datos');
  String  data=await httpGet('https:api.com/aliens');
  print(data);
  print('Ultima linea');
}
