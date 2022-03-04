import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FocusNodeScreen extends StatefulWidget {
  @override
  State<FocusNodeScreen> createState() => _FocusNodeScreenState();
}

class _FocusNodeScreenState extends State<FocusNodeScreen> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController lastNameTectController = TextEditingController();

  FocusNode nameFocus = new FocusNode();
  FocusNode lastNameFocus = new FocusNode();
  FocusNode phoneFocus = new FocusNode();
  FocusNode mailFocus = new FocusNode();
  FocusNode cantidadFocus = new FocusNode();
  FocusNode webFocus = new FocusNode();

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
                focusNode: nameFocus,
                onEditingComplete: () {
                  requestFocus(context, lastNameFocus);
                  TextInputAction.next;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Apellido:"),
                controller: lastNameTectController,
                focusNode: lastNameFocus,
                onEditingComplete: () {
                  requestFocus(context, phoneFocus);
                  TextInputAction.next;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "N° de teléfono:"),
                keyboardType: TextInputType.phone,
                focusNode: phoneFocus,
                onEditingComplete: () {
                  requestFocus(context, mailFocus);
                  TextInputAction.next;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Mail:"),
                keyboardType: TextInputType.emailAddress,
                focusNode: mailFocus,
                onEditingComplete: () {
                  requestFocus(context, cantidadFocus);
                  TextInputAction.next;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Cantidad:"),
                keyboardType: TextInputType.number,
                focusNode: cantidadFocus,
                onEditingComplete: () {
                  requestFocus(context, webFocus);
                  TextInputAction.next;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Web:"),
                keyboardType: TextInputType.url,
                focusNode: webFocus,
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
    nameFocus = FocusNode();
    lastNameFocus = FocusNode();
    phoneFocus = FocusNode();
    mailFocus = FocusNode();
    cantidadFocus = FocusNode();
    webFocus = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTectController.dispose();
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }
}
