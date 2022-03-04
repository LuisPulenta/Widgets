import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TiposTecladoScreen extends StatefulWidget {
  @override
  State<TiposTecladoScreen> createState() => _TiposTecladoScreenState();
}

class _TiposTecladoScreenState extends State<TiposTecladoScreen> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController lastNameTectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de teclado"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Nombre:"),
                controller: nameTextController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Apellido:"),
                controller: lastNameTectController,
              ),
              TextField(
                decoration: InputDecoration(labelText: "N° de teléfono:"),
                keyboardType: TextInputType.phone,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Mail:"),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Cantidad:"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Web:"),
                keyboardType: TextInputType.url,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameTextController = TextEditingController();
    lastNameTectController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTectController.dispose();
  }
}
