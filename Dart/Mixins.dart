// Implementacion de https://medium.com/comunidad-flutter/dart-qué-son-los-mixins-5f2ab880a4ce

abstract class Animal{
  
}

abstract class Mamifero extends Animal{
  
}

abstract class Ave extends Animal{
  
}

abstract class Pez extends Animal{
  
}

abstract class Volador{
  void volar() => print('Volar');
}

abstract class Caminante{
  void caminar() => print('Caminar');
}


abstract class Nadador{
  void nadar() => print('Nadar');
}

class Delfin extends Mamifero with Nadador{
  
}

class Murcielago extends Mamifero with Caminante, Volador{
  
}

class Gato extends Mamifero with Caminante{
  
}

class Paloma extends Ave with Caminante, Volador {
  
}

class Pato extends Ave with Caminante, Volador, Nadador{
  
}

class Tiburon extends Pez with Nadador{
  
}

class PezVolador extends Pez with Volador, Nadador{
  
}

void main(){
  final pato = new Pato();
  pato.caminar();
  pato.nadar();
  pato.volar();
  
  final pezVolador = new Pato();
  pezVolador.nadar();
  pezVolador.volar();
}
