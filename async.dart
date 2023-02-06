void main(List<String> arguments) async {
  //Programa asíncrono que debe esperar a que el hilo secundario termine

  //Acciones del hilo principal
  print('Recibiendo Datos');
  print('Esperando respuesta....');

  //Peticiones al hilo secundario
  //print(getNombre(18)); Asi no regresa el valor de la fucion, solo la instancia
  //getNombre(18).then(print); Este llamdado se comporta como un future normal
  final userName = await getNombre(18);
  print('El nombre del usuario es: $userName');

  //Mas acciones del hilo principal
  print('Aqui continuamos con el hilo principal');
}

Future<String> getNombre(int id) async {
  return Future.delayed(Duration(seconds: 20), () {
    return /*}'id-> $id, user->*/ 'Tiburcio';
  });
}
