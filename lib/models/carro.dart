class Carro {
  final String nombre;
  final String marca;
  final String modelo;
  final String precio;
  final String imagen;
  final String infoExtra;

  Carro({
    required this.nombre,
    required this.marca,
    required this.modelo,
    required this.precio,
    required this.imagen,
    required this.infoExtra,
  });
}

final List<Carro> listaAutos = [
  Carro(
    nombre: "BMW M3",
    marca: "BMW",
    modelo: "Competition 2024",
    precio: "\$110,000",
    imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-13-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/carros/carro1.jpg",
    infoExtra: "Motor 3.0L de 6 cilindros en línea, 510 HP, 0-100 km/h en 3.9s.",
  ),
  Carro(
    nombre: "Chevrolet Suburban",
    marca: "Chevrolet",
    modelo: "High Country",
    precio: "\$95,000",
    imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-13-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/carros/carro2.jpg",
    infoExtra: "V8 de 6.2L, capacidad para 8 pasajeros, lujo y espacio extremo.",
  ),
  Carro(
    nombre: "RAM TRX (V1)",
    marca: "Dodge RAM",
    modelo: "Rebel 2023",
    precio: "\$105,000",
    imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-13-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/carros/carro3.jpg",
    infoExtra: "Motor Supercharged V8 HEMI de 6.2L, 702 caballos de fuerza.",
  ),
  Carro(
    nombre: "RAM TRX (V2)",
    marca: "Dodge RAM",
    modelo: "Final Edition",
    precio: "\$118,000",
    imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-13-navegaci-n-3-pantallas-tu-Negocio-Flutter/refs/heads/main/carros/carro4.jpg",
    infoExtra: "Suspensión Bilstein® Black Hawk® e2, edición limitada.",
  ),
];