import 'dart:io';
import 'globals.dart';
import 'clases/ordenador.dart';
import 'clases/tablet.dart';
import 'clases/reloj_inteligente.dart';
import 'clases/servidor.dart';

void main() {

  int opcion = 0;

  while (opcion != 4) {

    print('\n===== GESTOR DE DISPOSITIVOS =====');
    print('1. Crear dispositivo');
    print('2. Eliminar dispositivo');
    print('3. Modificar dispositivo');
    print('4. Salir');

    stdout.write('Selecciona una opción: ');
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {

      case 1:
        crearDispositivo();
        break;

      case 2:
        eliminarDispositivo();
        break;

      case 3:
        modificarDispositivo();
        break;

      case 4:
        print('Saliendo del programa...');
        break;

      default:
        print('Opción incorrecta.');
    }
  }
}


void crearDispositivo() {

  print('\n===== CREAR DISPOSITIVO =====');
  print('1. Ordenador');
  print('2. Tablet');
  print('3. Reloj inteligente');
  print('4. Servidor');

  stdout.write('Selecciona el tipo de dispositivo: ');
  int tipo = int.parse(stdin.readLineSync()!);

  // Pedir datos comunes
  stdout.write('Introduce el ID: ');
  int id = int.parse(stdin.readLineSync()!);

  stdout.write('Introduce la marca: ');
  String marca = stdin.readLineSync()!;

  stdout.write('Introduce el modelo: ');
  String modelo = stdin.readLineSync()!;

  stdout.write('Introduce el año de fabricación: ');
  int anio = int.parse(stdin.readLineSync()!);

  // Crear dispositivo según el tipo seleccionado
  switch (tipo) {

    case 1:
      dispositivos.add(Ordenador(
        id: id,
        marca: marca,
        modelo: modelo,
        anioFabricacion: anio,
      ));
      break;

    case 2:
      dispositivos.add(Tablet(
        id: id,
        marca: marca,
        modelo: modelo,
        anioFabricacion: anio,
      ));
      break;

    case 3:
      dispositivos.add(RelojInteligente(
        id: id,
        marca: marca,
        modelo: modelo,
        anioFabricacion: anio,
      ));
      break;

    case 4:
      dispositivos.add(Servidor(
        id: id,
        marca: marca,
        modelo: modelo,
        anioFabricacion: anio,
      ));
      break;

    default:
      print('Tipo de dispositivo incorrecto.');
      return;
  }

  print('Dispositivo creado correctamente.');
}



void mostrarDispositivos() {

  if (dispositivos.isEmpty) {
    print('No hay dispositivos registrados.');
    return;
  }

  print('\n===== LISTA DE DISPOSITIVOS =====');

  for (var dispositivo in dispositivos) {
    print(dispositivo);
  }
}



void eliminarDispositivo() {

  mostrarDispositivos();

  if (dispositivos.isEmpty) {
    return;
  }

  stdout.write('Introduce el ID del dispositivo que quieres eliminar: ');
  int id = int.parse(stdin.readLineSync()!);

  bool existe = dispositivos.any((d) => d.id == id);

  if (existe) {
    dispositivos.removeWhere((d) => d.id == id);
    print('Dispositivo eliminado correctamente.');
  } else {
    print('No se ha encontrado ningún dispositivo con ese ID.');
  }
}



void modificarDispositivo() {

  mostrarDispositivos();

  if (dispositivos.isEmpty) {
    return;
  }

  stdout.write('Introduce el ID del dispositivo que quieres modificar: ');
  int id = int.parse(stdin.readLineSync()!);

  // Buscar dispositivo
  var dispositivo = dispositivos.where((d) => d.id == id).firstOrNull;

  if (dispositivo == null) {
    print('Dispositivo no encontrado.');
    return;
  }

  // Modificar datos
  stdout.write('Nueva marca: ');
  dispositivo.marca = stdin.readLineSync()!;

  stdout.write('Nuevo modelo: ');
  dispositivo.modelo = stdin.readLineSync()!;

  stdout.write('Nuevo año de fabricación: ');
  dispositivo.anioFabricacion = int.parse(stdin.readLineSync()!);

  print('Dispositivo modificado correctamente.');
}



