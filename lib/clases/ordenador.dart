import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';

class Ordenador extends Dispositivo with ConectividadWifi {

  // Constructor
  Ordenador({
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
  void compilarCodigo() {
    print('El ordenador está compilando código...');
  }
}
