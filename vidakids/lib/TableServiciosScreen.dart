import 'package:flutter/material.dart';
import 'package:vidakids/ServiciosScreen.dart';

class TableServiciosScreen extends StatelessWidget {
  const TableServiciosScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gestión de Servicios'),
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
                      title: const Text('Agregar Servicio'),
                      leading: const Icon(Icons.add),
                      onTap: () {
                        final route = MaterialPageRoute(builder: (context) => AgregarServiciosScreen());
                        Navigator.push(context, route);
                      },
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('Nombre')),
                          DataColumn(label: Text('Categoría')),
                          DataColumn(label: Text('Descripción')),
                          DataColumn(label: Text('Estado')),
                        ],
                        rows: const [
                          DataRow(cells: [
                            DataCell(Text('Elemento 1')),
                            DataCell(Text('Categoría 1')),
                            DataCell(Text('Descripción 1')),
                            DataCell(Text('Activo')),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('Elemento 2')),
                            DataCell(Text('Categoría 2')),
                            DataCell(Text('Descripción 2')),
                            DataCell(Text('Inactivo')),
                          ]),
                        ],
                      ),
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
