import 'dispositivo.dart';
import '../mixins/conectividad_wifi.dart';

// Herencia y mixin
class Ordenador extends Dispositivo with ConectividadWifi {

  // Constructor
  Ordenador({
    required super.id,
    required super.marca,
    required super.modelo,
    required super.anioFabricacion,
  });

  // Acción propia
  void compilarCodigo() {
    print('El ordenador está compilando código...');
  }
}
