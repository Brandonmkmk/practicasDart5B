void main(List<String> arguments) {
  dividir();
  //mandar a imprimir una funcion que retorna un valor
  print('¿el numero es par?: ${esPar()}');
  saludar('Brandon');
  String nombre = 'jovas';
  saludar(nombre);
  saludo1('Brandon', 2023);
  saludo2('pancho', 2023);
  //regresan un valor nulo al no pasarles nada a las 2 parametros.
  String? nombre2;
  int? year2;
  saludo2(nombre2, year2);

  saludo3('adrian');
  //saludo3(2030); se debe enviar al menos el argumento String
  saludo3('lud', 2040);

  //llamado a la funcion saludo4 con parametros nombrados
  saludo4();
  //se llama solo el parametro name
  saludo4(name: 'ricardo');
  //se puede manar a llamar en cualquier orden
  saludo4(year: 2023, name: 'Brandon');
  //se llama solo el parametro year
  saludo4(year: year2);

  //llamado a la funcion 5
  saludo5(name: 'Brandon', mensaje: 'Que onda');
  saludo5(name: 'Jovas', mensaje: 'eres gei');

//Uso de funciones anonimas
  var alumnos = Map();
  alumnos[1] = 'Brandon';
  alumnos[2] = 'Pancho';
  alumnos[3] = 'anacleto';
  alumnos[4] = 'panfilo';
  alumnos[5] = 'panfilo';
  alumnos[6] = 'pantaleon';
  //imprimiendo el map con una funcion anonima(key,value)
  alumnos.forEach((key, value) => print('clave: $key, valor: $value'));
}

//funcion que no recibe parametros y tampoco retorna un valor
void dividir() {
  int numero1 = 12;
  int numero2 = 5;
  int cociente;
  int residuo;
  double resultado;

  resultado = numero1 / numero2;
  print('el resultado de dividir $numero1 entre $numero2 es $resultado');

  cociente = numero1 ~/ numero2;
  print('cociente de la division entre $numero1 y $numero2 es $cociente');

  residuo = numero1 % numero2;
  print('residuo de la division entre $numero1 y $numero2 es $residuo');
}

//funcion que retorna un  valor
bool esPar() {
  var numero = 15;
  if (numero % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

void saludar(String nombre) {
  print('hola $nombre');
}

//funcion con 2 parametros
void saludo1(String name, int edad) {
  print('Hola $name y estas en el año: $edad');
}

void saludo2(String? name, int? year) {
  //funcion con 2 parametros
  //que podrian tener un valor nulo(para eso sirve el signo de interrogacion)
  print('Hola $name, estas en el año: $year');
}

//funcion con 2 parametros opcionales
//se le pueden enviar 0,1 0 2.
void saludo3([String name = 'anonimo', int year = 2023]) {
  print('Hola $name, estas en el año: $year');
}

void saludo4({String name = 'desconocido', int? year}) {
  //funcion con dos parametros nombrados
  //estos parametros son opcionales y
  //se pueden enviar en cualquier orden.
  //se requieren inicializar o permitir valores null
  print('saludo 4 Hola $name, estas en el año $year');
}

//funcion con 2 parametros nombrados pero requeridos
//para eso es la palabre clave required
void saludo5({required String name, required String mensaje}) {
  print('saludo5: $mensaje, $name');
}
