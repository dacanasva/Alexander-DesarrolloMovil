import 'package:flutter/material.dart';
import 'package:vidakids/TableCategoriaScreen.dart';
import 'package:vidakids/TableServiciosScreen.dart';

class menuNavScreen extends StatefulWidget {
  const menuNavScreen({super.key});

  @override
  State<menuNavScreen> createState() => _MenuNav();
}
class _MenuNav extends State<menuNavScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Menu de navegacion"),
        backgroundColor: Colors.blue,
      ),
       body: Center(        
        child:Container(
        width: 500,
        height: 450,
        decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(
               color: const Color.fromARGB(255, 33, 150, 243), // color del borde
                width: 5, // ancho del borde
              ),
               borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset('vidakids.jpg', width: 300, height: 300,),
            ListTile(
              leading: const Icon(Icons.deblur, color: Color.fromARGB(255, 53, 31, 220)),
              title: const Text("Categoria de servicios"),
              trailing: const Icon(Icons.navigate_next_outlined, color: Color.fromARGB(255, 53, 31, 220)),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const  TablaCategoriaScreen());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.deblur, color: Color.fromARGB(255, 53, 31, 220)),
              title: const Text("Gestion de servicios"),
              trailing: const Icon(Icons.navigate_next_outlined, color: Color.fromARGB(255, 53, 31, 220)),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const TableServiciosScreen());
                Navigator.push(context, route);
              },
            ),
            
          ],
        ),
      ),
     ),
    ),
   );
  }
}