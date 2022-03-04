import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Column(
        children: [
          Text(
            'Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del latín, combinadas con estructuras muy útiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estará libre de repeticiones, humor agregado o palabras no características del lenguaje, etc.',
            textAlign: TextAlign.justify,
            maxLines: 10,
            overflow: TextOverflow.fade,
            softWrap: true,
            textScaleFactor: 1,
            //strutStyle: StrutStyle(fontSize: 18),
            style: TextStyle(
                fontSize: 30,
                height: 1,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                decorationColor: Colors.red,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
                color: Colors.black,
                backgroundColor: Colors.white,
                fontFamily: "Schyler",
                wordSpacing: 1,
                letterSpacing: 1,
                shadows: [
                  Shadow(
                      color: Colors.green, blurRadius: 1, offset: Offset(2, 2))
                ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                "ja",
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "ja",
                style: TextStyle(fontSize: 34),
              ),
              Text(
                "ja",
                style: TextStyle(fontSize: 45),
              ),
              Text(
                "ja",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
