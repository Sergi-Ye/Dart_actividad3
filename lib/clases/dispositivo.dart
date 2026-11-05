class Dispositivo {
  int id;
  String marca;
  String modelo;
  int anioFabricacion;

  // Constructor
  Dispositivo({
    required this.id,
    required this.marca,
    required this.modelo,
    required this.anioFabricacion,
  });

  // Mostrar información del dispositivo
  @override
  String toString() {
    return 'ID: $id | Marca: $marca | Modelo: $modelo | Año: $anioFabricacion';
  }
}
