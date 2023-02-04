//ejemplo de uso de la clase future
//se van a enviar tareas al segundo plano
//mientras la aplicacion puede seguir trabajando
void main(List<String> arguments) {
//acciones del hilo principal(el main siempre sera este hilo)
  print('Vamos a conectar con la NASA');
  print('Pidiendo datos del espacio exterior...');

  //Llamado a la funcion future
  //entre parentesis se le pasan los parametros de la funcion future
  //el then verifica que se le pasen los parametros, y si es asi, los recibe
  //y los imprime en una variable llamada data
  //dentro de las llaves se puede hacer lo que se quiera con la variable
  //que recibe los datos(data)

  getDataFromMars('https://mars.api.nasa.com', 2).then((data) {
    print(data);
    print(data.toUpperCase());
    print(data.toLowerCase());
  });
  //mas acciones del hilo principal
  print('Mientras, seguimos trabajando con el hilo principal...');

  //LLamando a otro funcion tipo future
  var alienWeight = 0;
  getAlienWeight(1, 30).then((valor) => alienWeight = valor);
  print('peso del alien: $alienWeight');
  if (alienWeight > 100) {
    print('el alien tiene sobrepeso');
  } else {
    print(' el alien esta en su peso ideal');
  }
}

//creacion de la funcion future
Future<String> getDataFromMars(String url, int idPlanet) {
  //Acciones de larga duracion que debe realizar la funcion
  var planeta = "";
  if (idPlanet == 2) {
    planeta = "marte";
  } else if (idPlanet == 1) {
    planeta = "venus";
  } else {
    planeta = "tierra";
  }
  //con el objeto future se le esta indicando que se espere
  //10 segundos y despues se ejecuten los bloques de codigo que estan dentro
  return Future.delayed(Duration(seconds: 10), () {
    if (idPlanet == 1 || idPlanet == 2) {
      return 'se encontro vida extraterrestre en $planeta';
    } else {
      return 'Lo sentimos, no se encontro vida inteligente en $planeta';
    }
  });
}

//otra funcion future(otro hilo)
Future<int> getAlienWeight(int idPlaneta, int referencia) {
  int peso = referencia;
  if (idPlaneta == 1 || idPlaneta == 2) {
    for (int i = 1; i <= 10; i++) {
      peso *= i;
    }
  } else {
    peso *= 2;
  }
  return Future.delayed(Duration(seconds: 10), (() => peso));
}
