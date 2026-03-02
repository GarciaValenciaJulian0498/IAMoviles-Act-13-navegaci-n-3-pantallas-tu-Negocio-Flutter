import 'package:flutter/material.dart';
import 'screens/catalogo.dart';
import 'screens/detalle_producto.dart';
import 'screens/pago.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Store',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CatalogoScreen(),
        '/detalle': (context) => const DetalleProductoScreen(),
        '/pago': (context) => const PagoScreen(),
      },
    );
  }
}