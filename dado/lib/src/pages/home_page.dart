import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

final random = Random();
String imagen = "assets/dice_1.png";
String imagen2 = "assets/dice_1.png";
final imagenes = [
  "assets/dice_1.png",
  "assets/dice_2.png",
  "assets/dice_3.png",
  "assets/dice_4.png",
  "assets/dice_5.png",
  "assets/dice_6.png"
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dado"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage(imagen),
                      width: 100.0,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Image(
                      image: AssetImage(imagen2),
                      width: 100.0,
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _imagenesAleatorias();
                        _imagenesAleatorias2();
                        //imagen = "assets/dice_2.png";
                      });
                    },
                    child: Text('Lanzar', style: TextStyle(fontSize: 20.0)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _imagenesAleatorias() {
    
    String img = imagenes[random.nextInt(imagenes.length)];
    imagen = img;
    //print(imagen);
  }

  void _imagenesAleatorias2() {

    String img2 = imagenes[random.nextInt(imagenes.length)];
    imagen2 = img2;
    //print(imagen);
  }
}
