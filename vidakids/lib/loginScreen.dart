import 'package:flutter/material.dart';
import 'package:vidakids/menuScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formLogin = GlobalKey<FormState>();
  String nombreUsuario = '';
  String password = '';
  String mostrarMensaje = '';
  void acceder(String nombreUsuario, String password){
    
    print(nombreUsuario);
    print(password);

    if(nombreUsuario == "sena" && password == "1234"){
      final route = MaterialPageRoute(
      builder: (context) => const menuNavScreen() );
      Navigator.push(context, route);
      
    }else{
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("login",style: TextStyle(color: Colors.black, fontSize: 30),),
        backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      ),
      body:  Center(
        child: Container(
          width: 500,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
              border: Border.all(
               color: const Color.fromARGB(255, 33, 150, 243), // color del borde
                width: 5, // ancho del borde
              ),
               borderRadius: BorderRadius.circular(10)
            ),
            child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Form(
          key: _formLogin,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person, color:  Color.fromARGB(255, 33, 150, 243),),
                  hintText: "Nombre de usuario",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'Digitar Usuario',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15,fontFamily: AutofillHints.username),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Porfavor ingrese su usuario";
                  }
                  return null;
                },
                 onSaved: (value){
                  nombreUsuario = value!;
                },
              ),
              const SizedBox(height: 30,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined, color: Color.fromARGB(255, 33, 150, 243),),
                  suffixIcon: Icon(Icons.password_rounded, color:   Color.fromARGB(255, 33, 150, 243),),
                  hintText: "Contraseña",
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  labelText: 'Digitar contraseña',
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 15,fontFamily: AutofillHints.password)
                ),
                validator: (value){
                  if(value == null || value.length < 4){
                    return "Porfavor ingrese una contraseña de al menos 8 dígitos";
                  }
                  return null;
                },
                onSaved: (value){
                  password = value!;
                },
              ),
              const SizedBox(height: 30,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 33, 150, 243),),
                onPressed: (){
                  if(_formLogin.currentState!.validate()){
                    _formLogin.currentState!.save();
                    acceder(nombreUsuario, password);
                  }
                },
                 icon: const Icon(Icons.login_rounded), label: const Text('Acceder', selectionColor: Colors.white,),
                 )
            ],
          ),
        ),
        ), 
        )
      )
    ),
    );
  }
}

