import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.passthrough,
          overflow: Overflow.visible,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ),
            Positioned(
              right: 30,
              top: 130,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
            ),
            Text(
                "Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo Contenido aquí, contenido aquí. Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de Lorem Ipsum va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).")
          ],
        ),
      ),
    );
  }
}
