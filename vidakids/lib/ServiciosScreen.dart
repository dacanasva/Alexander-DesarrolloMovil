import 'package:flutter/material.dart';

class AgregarServiciosScreen extends StatelessWidget {
  const AgregarServiciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.blue, // color del borde
              width: 5, // ancho del borde
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                  "Gestión de servicios",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24), // Cambia el valor de fontSize según sea necesario
                ),
                const SizedBox(height: 30),  
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.padding,
                      color: Color.fromARGB(255, 4, 41, 255)),
                  hintText: "Nombre del servicio",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.padding,
                      color: Color.fromARGB(255, 4, 41, 255)),
                  hintText: "Nombre de la categoria",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.description,
                      color: Color.fromARGB(255, 4, 41, 255)),
                  hintText: "Informacion de servicio",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.check_box_outline_blank,
                      color: Color.fromARGB(255, 4, 41, 255)),  
                  hintText: "Estado",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
                const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 96, 76, 224)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Agregar',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    )
    );
  }
}
