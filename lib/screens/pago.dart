import 'package:flutter/material.dart';

class PagoScreen extends StatefulWidget {
  const PagoScreen({super.key});

  @override
  State<PagoScreen> createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> {
  final _titular = TextEditingController();
  final _numero = TextEditingController();
  final _fecha = TextEditingController();
  final _cvv = TextEditingController();

  bool get _isFormValid => _titular.text.isNotEmpty && _numero.text.isNotEmpty && _fecha.text.isNotEmpty && _cvv.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color.fromRGBO(11, 150, 122, 1), borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const Text("FORMULARIO DE PAGO", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 20),
                    _input("Titular", Icons.person, _titular),
                    _input("Num Tarjeta", Icons.credit_card, _numero),
                    Row(
                      children: [
                        Expanded(child: _input("Fecha", Icons.date_range, _fecha)),
                        const SizedBox(width: 10),
                        Expanded(child: _input("CVV", Icons.lock, _cvv)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                    onPressed: () => Navigator.pop(context),
                    child: const Text("CANCELAR"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green, padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                    onPressed: () {
                      if (_isFormValid) {
                        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Llena todos los campos")));
                      }
                    },
                    child: const Text("ACEPTAR"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _input(String label, IconData icon, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        onChanged: (v) => setState(() {}),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.black26,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}