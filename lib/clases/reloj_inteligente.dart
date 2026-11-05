import 'dispositivo.dart';

class RelojInteligente extends Dispositivo {

  // Constructor
  RelojInteligente({
    required int id,
    required String marca,
    required String modelo,
    required int anioFabricacion,
  }) : super(
    id: id,
    marca: marca,
    modelo: modelo,
    anioFabricacion: anioFabricacion,
  );

  // Método específico
  void mostrarNotificaciones() {
    print('Mostrando las notificaciones del reloj...');
  }
}
