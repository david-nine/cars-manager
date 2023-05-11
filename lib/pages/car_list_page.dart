import 'package:app01/models/car.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatefulWidget {
  const CarListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarsListState();
  }
}

class _CarsListState extends State<CarListPage> {
  List<Car> veicles = [
    Car(name: "Tempra", brand: "Fiat"),
    Car(name: "Q3", brand: "Audi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de veículos"),
          actions: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed("/car_form").then((value) {
                  addNewCar(value as Car);
                });
              },
              icon: const Icon(Icons.add),
              label: const Text(""),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: veicles.length,
          itemBuilder: (context, index) {
            Car current = veicles[index];
            return ListTile(
              title: Text(current.name),
              subtitle: Text(current.brand),
            );
          },
        ));
  }

   void addNewCar(Car car) {
    setState(() {
      veicles.add(car);
    });
  }
}
