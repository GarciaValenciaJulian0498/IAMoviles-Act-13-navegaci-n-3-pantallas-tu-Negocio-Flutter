import 'package:flutter/material.dart';
import '../models/carro.dart';

class DetalleProductoScreen extends StatelessWidget {
  const DetalleProductoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auto = ModalRoute.of(context)!.settings.arguments as Carro;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context)),
                    const Icon(Icons.account_circle, size: 45),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Image.network(auto.imagen, height: 200, fit: BoxFit.cover)),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(auto.nombre, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Text("${auto.marca} ${auto.modelo}", style: const TextStyle(color: Colors.grey)),
                          Text(auto.precio, style: const TextStyle(fontSize: 20, color: Colors.greenAccent)),
                          const SizedBox(height: 10),
                          _boton(Icons.favorite, "Agregar a Favoritos", Colors.orange),
                          _boton(Icons.calendar_today, "Solicitar Prueba de Manejo", Colors.pinkAccent),
                          _boton(Icons.shopping_bag, "Comprar", const Color.fromRGBO(11, 150, 122, 1), action: () => Navigator.pushNamed(context, '/pago')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chevron_left),
                  _Circle(Colors.red), _Circle(Colors.blue), _Circle(Colors.black), _Circle(Colors.white), _Circle(Colors.grey),
                  Icon(Icons.chevron_right),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Detalles", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Divider(color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(auto.infoExtra, style: const TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "Catálogo",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
          BottomNavigationBarItem(icon: Icon(Icons.palette), label: "Tema"),
        ],
      ),
    );
  }

  Widget _boton(IconData icon, String text, Color color, {VoidCallback? action}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: color, foregroundColor: Colors.white),
        onPressed: action ?? () {},
        icon: Icon(icon, size: 16),
        label: Text(text, style: const TextStyle(fontSize: 10)),
      ),
    );
  }
}

class _Circle extends StatelessWidget {
  final Color color;
  const _Circle(this.color);
  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.symmetric(horizontal: 4), width: 12, height: 12, decoration: BoxDecoration(color: color, shape: BoxShape.circle));
}