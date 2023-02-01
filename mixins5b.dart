void main(List<String> arguments) {
  //Instanciando y usando un objeto de la clase gato
  Gato garfield = Gato();
  garfield.yoSoy(); //funcion de la clase gato
  garfield.infoAnimal(); //funcion de la clase animal(herencia);
  garfield.infoMamifero(); //funcion de la clase mamifero(herencia);
  garfield.caminar(); //funcion de la clase caminante(herencia);

  Paloma pajaro = Paloma();
  pajaro.paloma();
  pajaro.infoAnimal();
  pajaro.infoAve();
  pajaro.volar(); //se puede usar el metodo Volar dentro de la clase volador
  //ya que se utilizo la palabra clave with(accede a los metodos de la clase)
  pajaro.aparicion();

  Tiburon pez = Tiburon();
  pez.infoAnimal();
  pez.infoPez();
  pez.Color();
  pez.nadar();

  Delfin delfin = Delfin();
  delfin.infoMamifero();
  delfin.infoAnimal();
  delfin.nadar();
  delfin.nombre();

  Murcielago vampiro = Murcielago();
  vampiro.infoMamifero();
  vampiro.infoAnimal();
  vampiro.saludar();
  vampiro.volar();

  Pato donald = Pato();
  donald.infoAve();
  donald.infoAnimal();
  donald.caminar();
  donald.nadar();
  donald.volar();
  donald.sonido();

  PezVolador avion = PezVolador();
  avion.infoPez();
  avion.infoAnimal();
  avion.miFuncion();
  avion.nadar();
  avion.volar();
}

abstract class Animales {
  void infoAnimal();
}

//Herencia de la clase padre(Animales)
abstract class Mamifero extends Animales {
  void infoMamifero();
}

abstract class Ave extends Animales {
  void infoAve();
}

abstract class Pez extends Animales {
  void infoPez();
}

//clases que si instancian una funcion
class Caminante {
  void caminar() => print('puedo caminar');
}

class Nadador {
  void nadar() => print('puedo nadar');
}

class Volador {
  void volar() => print('puedo volar');
}

//creacion de las clases de los tipos especificos de animales
//la palabra with hace referencia a un mixin Caminante que si tiene un metodo instanciado
//y el metodo dentro de la clase Caminante se puede mandar a llamar cuando se intancie
//un objeto de tipo gato en el metodo main
//ejemplo: garfield.caminar()
class Gato extends Mamifero with Caminante {
  //Metodos heredados de animal y mamifero
  //se sobreescriben los metodos ya que estan
  //dentro de una clase abstracta y no han sido instanciados
  @override
  void infoMamifero() {
    print('soy un mamifero');
  }

  @override
  void infoAnimal() {
    print('soy un animal');
  }

  //metodo de la clase gato
  void yoSoy() => print('soy un michi');
}

class Paloma extends Ave with Volador {
  //se inicializa la funcion de la clase abstracta Ave(ya que esta heredando la clase)
  @override
  void infoAve() => print('soy un ave');
  //se inicializa la funcion de la clase abstracta Animal(ya que ave tambien hereda de la clase Animal)
  @override
  void infoAnimal() => print('soy un animal');

  void paloma() => print('soy una paloma');
  void aparicion() => print('salgo en la caricatura del pajaro loco');
}

class Tiburon extends Pez with Nadador {
  @override
  void infoPez() => print('soy un tiburon');
  @override
  void infoAnimal() => print('soy un animal de tipo pez');

  void Color() => print('soy de color azul');
}

class Delfin extends Mamifero with Nadador {
  @override
  void infoMamifero() => print('Soy un delfin');
  @override
  void infoAnimal() => print('soy un animal de tipo mamifero');

  void nombre() => print('Hola,mi nombre es delfinito');
}

class Murcielago extends Mamifero with Volador {
  @override
  void infoMamifero() => print('Soy un muricelago');
  @override
  void infoAnimal() => print('soy un animal de tipo mamifero');

  void saludar() => print('Hola, soy la causa del covid 19');
}

class Pato extends Ave with Caminante, Nadador, Volador {
  @override
  void infoAve() => print('soy el pato donald');
  @override
  void infoAnimal() => print('soy un animal de tipo ave');

  void sonido() => print('hago cuacuacua!!');
}

class PezVolador extends Pez with Nadador, Volador {
  @override
  void infoPez() => print('soy un pez volador en el oceano');
  @override
  void infoAnimal() => print('soy un animal de tipo pez');

  void miFuncion() => print('vuelo como un avion pero dentro del mar');
}
