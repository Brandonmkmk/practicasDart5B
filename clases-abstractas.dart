void main() {
  final primerCuadrado = Cuadrado();
  print('el area del cuadrado es: ${primerCuadrado.area}');
}

abstract class FiguraGeometrica {
  //estableciendo lo que debe contener una figura geometrica

  double? area;

  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  //cuadrado hereda de figura geometrica
  // y debe implementar todo lo definido en la clase abstracta
  @override
  double? area;
  @override
  //se usa override ya que se estan sobreescribiendo lo que ya estaba definido
  // en la clase abstracta FiguraGeometrica
  double calcularArea() {
    double lado = 12.5;
    return lado * lado;
  }
}
