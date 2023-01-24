void main() {
  List misMascotas = [
    1,
    "gingter",
    "perro",
    "husky siberiano",
    7.5,
    2,
    "kc",
    "perro",
    "mezcla",
    5.5,
    3,
    "moji",
    "gato",
    "no se sabe",
    1.2
  ];

  var longitud = misMascotas.length;
  print("los datos son: $longitud");

  misMascotas.add(4);
  misMascotas.add("moka");
  misMascotas.add("gato");
  misMascotas.add("siames");
  misMascotas.add("no se sabe");

  print("la nueva lista de mascotas es: ");
  print(misMascotas);
  longitud = misMascotas.length;
  print("los elementos mactualizados son: $longitud");

  List<int> numeros = [1, 2, 3, 4, 5, 6];
  if (numeros.isEmpty) {
    print("la lista de buneros esta vacia");
  } else {
    print("la lista de numeros no esta vacia");
  }
  print("elprimer elemento de la lista es: ${numeros.first}");
  print("el tultimo elemento de la lista es: ${numeros.last}");
  print("elemento en la posicion 2 es; ${numeros.indexOf(2)}");

  List<int> newLista = [10];
  for (int i = 0; i <= 10; i++) {
    newLista.add(10 * i);
  }
  print("la tabla de multiplicar del 10 es: ${newLista}");
}
