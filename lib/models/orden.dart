import 'package:mozzarella_pizza/models/producto.dart';

class Orden {
  List<Producto> productos = [];
  double total = 0;
  String estado = "";
  bool aDomicilio = false;

  Orden({
    required this.productos,
    required this.total,
    required this.estado,
    required this.aDomicilio,
  });
}
