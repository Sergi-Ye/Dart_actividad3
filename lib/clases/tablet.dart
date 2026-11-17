import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';
import '../mixins/sincronizacion_nube.dart';

// Herencia y mixin
class Tablet extends Dispositivo with ConectividadWifi, SincronizacionNube {

  // Constructor
  Tablet({
    required super.id,
    required super.marca,
    required super.modelo,
    required super.anioFabricacion,
  });

  // Acción propia
  void modoNoche() {
    print('La tablet ha activado el modo noche.');
  }
}
