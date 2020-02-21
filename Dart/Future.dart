// Futures
/*
  Los futures son como una orden de comida en un restuarante, pido la orden, mientras tanto me siento, voy al bano, etc y despues de n tiempo la orden llega.
  
  Asi un future, hace una peticion a httpGet mientras hace otras cosas.
  */
//Retornos futuros
Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4),(){
    return 'Hola Mundo';
  });
}


void main(){
  print('Estoy pidiendo datos');
  httpGet('https:api.com/aliens').then((data){
    print(data);
  });
  print('Ultima linea');
}
