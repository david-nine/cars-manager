import 'package:flutter/material.dart';

class CarsListPage extends StatefulWidget {
  const CarsListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarsListState();
  }
}

class _CarsListState extends State<CarsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de veículos"),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed("/car_form");
            },
            icon: const Icon(Icons.add),
            label: const Text(""),
          )
        ],
      ),
      body: const Text("Lista de carros vai aqui"),
    );
  }
}
