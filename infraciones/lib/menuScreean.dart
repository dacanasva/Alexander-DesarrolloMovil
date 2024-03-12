import 'package:infraciones/infracionesScreean.dart';
import 'package:infraciones/login_Screean.dart';
import 'package:infraciones/pico&placaScreean.dart';
import 'package:flutter/material.dart';

class menuNav extends StatefulWidget {
  const menuNav({super.key});

  @override
  State<menuNav> createState() => _MenuNav();
}
class _MenuNav extends State<menuNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 209, 182) ,
       body: Center(        
        child:Container(
        width: 500,
        height: 450,
        decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(
                color: Colors.black, // color del borde
                width: 5, // ancho del borde
              ),
               borderRadius: BorderRadius.circular(10)
            ),
            padding: EdgeInsets.all(20),
        child: ListView(
          children: [
          Image.network('https://st4.depositphotos.com/36552966/38479/v/450/depositphotos_384799732-stock-illustration-traffic-police-signalling-police-car.jpg',
            width: 200,
            height: 200,
          ) ,
            ListTile(
              leading: const Icon(Icons.search, color: Color.fromARGB(255, 53, 31, 220)),
              title: const Text("Consulta el pico y placa"),
              trailing: const Icon(Icons.navigate_next_outlined, color: Color.fromARGB(255, 53, 31, 220)),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const  PicoPlacaScreen(placa: 2,));
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.deblur, color: Color.fromARGB(255, 53, 31, 220)),
              title: const Text("Infraciones"),
              trailing: const Icon(Icons.navigate_next_outlined, color: Color.fromARGB(255, 53, 31, 220)),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const infracionesScreean());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: const Icon(Icons.login, color: Color.fromARGB(255, 53, 31, 220)),
              title: const Text("Login"),
              trailing: const Icon(Icons.navigate_next_outlined, color: Color.fromARGB(255, 53, 31, 220)),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const LoginScreen());
                Navigator.push(context, route);
              },
            ),
            
          ],
        ),
      ),
     )
   );
  }
}