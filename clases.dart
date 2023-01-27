import 'dart:io';

void main(List<String> arguments) {
  var una = Computadora(marca: 'dell', cpu: 'intel core i9', ram: 16);
  if (una.marca == 'dell') {
    print('tu computadora es una marca buena, ya que es una ${una.marca}');
  } else {
    print('tu compu no es una marca buena');
  }
  print('informacion de laptop: $una');
  //stdout.write es lo mismo que print, pero es una mensaje de salida
  stdout.write('¿Esta computadora es adecuada para la materia DMM?: ');
  //stdin.readLineSync sirve pedir valores desde la terminal
  String? respuesta = stdin.readLineSync();
  if (respuesta != null) {
    //si respuesta es diferente a un valor nullo(si el usuario escribe si o no)
    //entonces se van a ejecutra los bloques if de abajo
    if (respuesta.contains('si')) {
      una.ConfigurarAdecuada = true;
    } else {
      una.ConfigurarAdecuada = false;
    }
  } else {
    print('no se puede saber si la pc es adecuada porque no se recibio nada');
  }
  print('laptop1 es adecuada para tu materia: ${una.esAdecuada}');
  una.marca = 'hp';
  una.cpu = 'celeron';
  una.ram = 16;
  print('informacion de laptop: $una');
}

class Computadora {
  // podemos declarar una variable privada con el _
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada = false;
  //manera mas sencilla de hacer un constructor con parametros nombrados, es mandando a traer las variables con la palabre clave this.
  Computadora({this.marca, this.cpu, this.ram});

  @override
  String toString() {
    // TODO: implement toString
    return 'Marca: ${this.marca}, cpu: ${this.cpu}, ram: ${this.ram}, es adecuada para DMM: $adecuada';
  }

  //getter de la variable adecuada, los getters van primero con el tipo de valor
  //luego la palabra clave get
  //y por ultimo el nombre del metodo(esAdecuada)
  //el get no se debe llamar igual que la variable
  bool get esAdecuada {
    return adecuada;
  }

  //setter de la variable adecuada
  set ConfigurarAdecuada(bool valor) {
    adecuada = valor;
  }
}
