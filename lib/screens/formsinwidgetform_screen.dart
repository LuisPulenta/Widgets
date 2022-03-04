import 'package:flutter/material.dart';
import 'package:widgets/screens/navigator3_screen.dart';

class FormSinWidgetFormScreen extends StatefulWidget {
  @override
  State<FormSinWidgetFormScreen> createState() =>
      _FormSinWidgetFormScreenState();
}

class _FormSinWidgetFormScreenState extends State<FormSinWidgetFormScreen> {
  String _name = '';
  String _nameError = '';
  bool _nameShowError = false;
  TextEditingController _nameController = TextEditingController();

  String _lastName = '';
  String _lastNameError = '';
  bool _lastNameShowError = false;
  TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Sin Widget Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Nombre:",
                  hintText: 'Ingresa nombres...',
                  errorText: _nameShowError ? _nameError : null,
                  suffixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              controller: _nameController,
              onChanged: (value) {
                _name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Apellido:",
                  hintText: 'Ingresa apellido...',
                  errorText: _lastNameShowError ? _lastNameError : null,
                  suffixIcon: Icon(Icons.person)),
              controller: _lastNameController,
              onChanged: (value) {
                _lastName = value;
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
    );
  }

  void _showSecondPage(BuildContext context) {
    if (!validateFields()) {
      return;
    }
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return Navigator3Screen(
        name: _name,
        lastName: _lastName,
      );
    });
    Navigator.of(context).push(route);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _lastNameController.dispose();
  }

  bool validateFields() {
    bool isValid = true;
    if (_name.isEmpty) {
      isValid = false;
      _nameShowError = true;
      _nameError = 'Debes ingresar un nombre';
    } else {
      _nameShowError = false;
    }

    if (_lastName.isEmpty) {
      isValid = false;
      _lastNameShowError = true;
      _lastNameError = 'Debes ingresar un apellido';
    } else {
      _lastNameShowError = false;
    }

    setState(() {});

    return isValid;
  }
}
