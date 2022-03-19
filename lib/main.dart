import 'package:flutter/material.dart';

void main() => runApp(Tep());
//runApp(Text("\n Hola Mundo", textDirection: TextDirection.ltr));




class Tep extends StatefulWidget {
  @override
  State<Tep> createState() => _TepState();
}


class _TepState extends State<Tep>{
  @override
  Widget build(BuildContext context) => MaterialApp (
    home:  Scaffold(
      appBar:  AppBar( title: Text("Hola wito")),
      body: Padding(
        //padding: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.only(top: 40,left: 40,right: 20),
        child: Align(
          alignment: Alignment(-1.0,-1.0),
          child: ClipPath(child: Image.asset('imagenes/tena1.jpeg'),
            clipper: HexagonClipper(),
          ),
        )
      )
    ),
  );

}
//network('https://cartelurbano.com/sites/default/files/cuadradaotalora.jpg',width: 120,height: 100)

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0) // moving to topCenter 1st, then draw the path
      ..lineTo(size.width, size.height * .25)
      ..lineTo(size.width, size.height * .75)
      ..lineTo(size.width * .5, size.height)
      ..lineTo(0, size.height * .75)
      ..lineTo(0, size.height * .25)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}