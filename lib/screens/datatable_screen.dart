import 'package:flutter/material.dart';
import 'dart:math';
import 'package:widgets/model/matter.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({Key? key}) : super(key: key);

  @override
  _DataTableScreenState createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  List<Matter> listaMaterias = [];
  List<String> materias = ['Español', 'Matemáticas', 'Historia', 'Geografía'];

  @override
  void initState() {
    super.initState();
    var random = Random();
    for (int i = 0; i < 4; i++) {
      Matter materia = Matter(
          materia: '', parcial1: 0, parcial2: 0, parcial3: 0, promedio: 0);
      materia.materia = materias[i];
      materia.parcial1 = random.nextInt(10);
      materia.parcial2 = random.nextInt(10);
      materia.parcial3 = random.nextInt(10);
      materia.promedio =
          (materia.parcial1 + materia.parcial2 + materia.parcial3) / 3;
      listaMaterias.add(materia);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Table"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('Materia'),
            ),
            DataColumn(
              label: Text('Parcial 1'),
            ),
            DataColumn(
              label: Text('Parcial 2'),
            ),
            DataColumn(
              label: Text('Parcial 3'),
            ),
            DataColumn(
              label: Text('Promedio'),
            ),
          ],
          rows: listaMaterias
              .map(
                (lista) => DataRow(cells: [
                  DataCell(
                    Text(lista.materia),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(lista.parcial1.toString()),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(lista.parcial2.toString()),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(lista.parcial3.toString()),
                    showEditIcon: false,
                    placeholder: false,
                  ),
                  DataCell(
                    Text(lista.promedio.toString()),
                    showEditIcon: false,
                    placeholder: false,
                  )
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}
