import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';
import '../mixins/sincronizacion_nube.dart';

// Herencia y mixin
class Servidor extends Dispositivo with ConectividadWifi, SincronizacionNube {

  // Constructor
  Servidor({
    required super.id,
    required super.marca,
    required super.modelo,
    required super.anioFabricacion,
  });

  // Acción propia
  void actualizarLibrerias() {
    print('El servidor está actualizando sus librerías...');
  }
}
