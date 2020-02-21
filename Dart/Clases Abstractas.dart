abstract class Animal{
  int patas;
  void emitirSonido();
}

class Perro implements Animal {
  int patas;
  int colas;
  void emitirSonido() => print('Guau!');
}


class Gato implements Animal {
  int patas;
  int colas;
  void emitirSonido() => print('Miau!');
}
void main(){
  final perro = new Perro();
  perro.emitirSonido();
  
  
  final gato = new Gato();
  gato.emitirSonido();
}
