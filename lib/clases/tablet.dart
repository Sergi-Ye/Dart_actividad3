import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';
import '../mixins/sincronizacion_nube.dart';

class Tablet extends Dispositivo with ConectividadWifi, SincronizacionNube {

  // Constructor
  Tablet({
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
  void modoNoche() {
    print('La tablet ha activado el modo noche.');
  }
}
