class Cuadrado{
  double _lado;
  
  set lado(double valor){
    if(valor <= 0){
      throw('El lado debe ser >0');
    }
    _lado=valor;
  }
  
  toString()=> 'Lado: $_lado';
  
  double get area{
    return _lado*_lado;
  }
  
  double get areaSimple => _lado*_lado;
  
}

void main(){
  final cuadrado = new Cuadrado();
  //Implicitamente uso el set de lado
  cuadrado.lado=10;
  print(cuadrado.toString());
  cuadrado.lado=100;
  print(cuadrado.toString());
  print('Area - ${cuadrado.area}');
  cuadrado.lado=2;
  print('Area - ${cuadrado.areaSimple}');
}
