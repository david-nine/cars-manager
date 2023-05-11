import 'package:app01/models/car.dart';
import 'package:flutter/material.dart';

class CarForm extends StatelessWidget {
  const CarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de carros"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(
              Car(name: "Argo", brand: "Fiat"),
            );
          },
        ));
  }
}
