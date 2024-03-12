import 'package:flutter/material.dart';

class PicoPlacaScreen extends StatelessWidget {
  final int placa;
  const PicoPlacaScreen({Key? key, required this.placa}) : super(key: key);

   String calcularDiaPicoPlaca(int placa) {
    if (placa == 0 || placa == 1) {
      return "lunes";
    } else if (placa == 2 || placa == 3) {
      return "martes";
    } else if (placa == 4 || placa == 5) {
      return "miércoles";
    } else if (placa == 6 || placa == 7) {
      return "jueves";
    } else if (placa == 8 || placa == 9) {
      return "viernes";
    } else {
      return "no válido";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 209, 182),
      appBar: AppBar(
        title: Text('***Consultar día de pico y placa***'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              // Actualiza el estado o envía el valor a algún otro lugar donde se pueda utilizar
              // Para este ejemplo, simplemente imprimimos el valor
              print('Valor del TextField: $value');
            },
            decoration: InputDecoration(
              labelText: "Ingrese el número de tu placa y te diré qué día cae:",
            ),
          ),
          Container(
            width: 500,
            height: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              'El día de pico y placa es $calcularDiaPicoPlaca:($placa)',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
