import 'package:flutter/material.dart';
import 'package:widgets/model/person.dart';
import 'package:widgets/screens/navigator3_screen.dart';

class FormConWidgetFormScreen extends StatefulWidget {
  @override
  State<FormConWidgetFormScreen> createState() =>
      _FormConWidgetFormScreenState();
}

class _FormConWidgetFormScreenState extends State<FormConWidgetFormScreen> {
  String? _name = '';
  String? _lastName = '';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Con Widget Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Nombre:",
                    hintText: 'Ingresa nombres...',
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onSaved: (value) {
                  _name = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Llene este campo";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellido:"),
                onSaved: (value) {
                  _lastName = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Llene este campo";
                  }
                  return null;
                },
              ),
              (ElevatedButton(
                child: Text("Ir a la segunda pantalla"),
                onPressed: () {
                  _showSecondPage(context);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      final route = MaterialPageRoute(builder: (BuildContext context) {
        return Navigator3Screen(
          name: _name!,
          lastName: _lastName!,
        );
      });
      Navigator.of(context).push(route);
    }
  }
}
