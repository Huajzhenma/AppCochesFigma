import 'package:figma/pages/registro.dart';
import 'package:figma/pages/ingreso.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      navigatorKey: navigatorKey,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/image2.png',
                height: 400,
                width: 400,
              ),
              SizedBox(height: 40),
              Text(
                'Tramites faciles de realizar con Jumot',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Compre un vehiculo de acuerdo a sus intereses y al mejor precio negociado',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  navigatorKey.currentState!.push(MaterialPageRoute(
                      builder: (context) =>
                          VentanaIngreso())); // Modificación de la línea que causa el error
                },
                child: Text(
                  'Ingreso',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.blue, width: 2))),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Agregado el color de fondo azul
                    fixedSize: MaterialStateProperty.all(Size(350, 50))),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  navigatorKey.currentState!.push(MaterialPageRoute(
                      builder: (context) =>
                          VentanaRegistro())); // Modificación de la línea que causa el error
                },
                child: Text('Registro'),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: BorderSide(color: Colors.blue, width: 2))),
                    fixedSize: MaterialStateProperty.all(Size(350, 50))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
