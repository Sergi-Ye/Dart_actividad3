import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';
import '../mixins/vibrar.dart';

// Herencia y mixin
class RelojInteligente extends Dispositivo with ConectividadWifi, Vibrar {

  // Constructor
  RelojInteligente({
    required super.id,
    required super.marca,
    required super.modelo,
    required super.anioFabricacion,
  });

  // Acción propia
  void mostrarNotificaciones() {
    print('Mostrando las notificaciones del reloj...');
  }
}
