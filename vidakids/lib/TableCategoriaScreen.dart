import 'package:flutter/material.dart';
import 'package:vidakids/CategoriaScreen.dart';

class TablaCategoriaScreen extends StatelessWidget {
  const TablaCategoriaScreen();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Categoría de servicios'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Buscar...',
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('Agregar categoría'),
                      leading: const Icon(Icons.add),
                      onTap: () {
                        final route = MaterialPageRoute(builder: (context) => const AgregarCategoriaScreen());
                        Navigator.push(context, route);
                      },
                    ),
                    const SizedBox(height: 10),
                    DataTable(
                      columns: const [
                        DataColumn(label: Text('Nombre Categoría')),
                        DataColumn(label: Text('Estado')),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('Elemento 1')),
                          DataCell(Text('Activo')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('Elemento 2')),
                          DataCell(Text('Inactivo')),
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
