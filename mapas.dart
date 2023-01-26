void main() {
  //Trabajando con mapas

  var mapa1 = {
    'name': "Pancho Villa",
    'feature': 'Heroe de la Rev',
    'muerte': 'asesinado',
    'real-name': 'Doroteo Arango'
  };
  print(mapa1);
  mapa1['name'] = 'Francisco Villa';
  print(mapa1);
  print('Tamaño del mapa: ${mapa1.length}');

  //Usando objetos

  var heroe2 = Map();
  heroe2['name'] = 'Emiliano Zapata';
  heroe2['feature'] = 'Heroe de la Independencia';
  heroe2['nickname'] = 'Caudillo del Sur';
  heroe2['muerte'] = 'asesinado';

  print(heroe2);

  //Mapas con tipo de datos
  var colores = Map<String, int>();
  colores['white'] = 255;
  colores['black'] = 0;
  colores['red'] = 100;
  colores['blue'] = 200;
  print(colores);
  colores.clear();
  print(colores);

  //Ver si existe una clave
  print('el mapa1 contiene la propiedad de realname?');
  print(mapa1.containsKey('real-name'));
  print('el heroe2 contiene la propiedad de realname?');
  print(heroe2.containsKey('real-name'));
}
