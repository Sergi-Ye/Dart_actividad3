import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';
import '../mixins/sincronizacion_nube.dart';

class Servidor extends Dispositivo with ConectividadWifi, SincronizacionNube {

  // Constructor
  Servidor({
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
  void actualizarLibrerias() {
    print('El servidor está actualizando sus librerías...');
  }
}
