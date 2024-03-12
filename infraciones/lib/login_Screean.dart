import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Color.fromARGB(255, 4, 41, 255)),
                hintText: "Nombre del Usuario",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                labelText: "Ingresar usuario",
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password, color: Color.fromARGB(255, 4, 41, 255)),
                suffixIcon: Icon(Icons.password_rounded),
                hintText: "Ingrese la contraseña",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                labelText: "Ingrese la contraseña",
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 96, 76, 224)),
              onPressed: () {
              },
              icon: Icon(Icons.login_rounded),
              label: Text('Entrar', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

