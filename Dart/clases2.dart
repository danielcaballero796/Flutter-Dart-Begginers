import 'dart:convert'; //para convertir a JSON

void main() {
  //final wolverine = new Heroe('Logan','Regeneracion');
  final rawJson = '{ "nombre":"Logan","poder":"Regeneracion"}';
  Map parseJson = json.decode(rawJson);

  //print(parseJson);
  final wolverine = new Heroe.fromJson(parseJson);

  print(wolverine.nombre);
  print(wolverine.poder);
}

class Heroe {
  String nombre;
  String poder;

  //otra forma de hacer constructor
  Heroe(this.nombre, this.poder);

  Heroe.fromJson(Map parseJson) {
    nombre = parseJson['nombre'];
    poder = parseJson['poder'];
  }
}
