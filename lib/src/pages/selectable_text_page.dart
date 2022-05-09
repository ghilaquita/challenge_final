import 'package:flutter/material.dart';

class SelectableTextPage extends StatelessWidget {
  const SelectableTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cotiza tus Gastos',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  final n1 = TextEditingController();
  final n2 = TextEditingController();
  final n3 = TextEditingController();
  final n4 = TextEditingController();
  final n5 = TextEditingController();
  final n6 = TextEditingController();
  double total = 0;
  double suma = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Cotiza tus Gastos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: Text(
                "Cotiza tus Gastos por dia:",
                style: TextStyle(fontSize: 25.0, fontFamily: 'Times'),
                textAlign: TextAlign.center,
              ),
            ),
            //Container(
            //child: SizedBox(height: 40.0,),
            //),
            Image.asset(
                'images/compras.jpg',
                width: 300,
                height: 150,
                fit:BoxFit.fill
            ),
            //Image.network(
                //'https://www.eleconomista.com.mx/__export/1600047344685/sites/eleconomista/img/2020/09/13/fp1_140920.png_1084158909.png'),
            /*height: 50.0,
          width: 280.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Cotiza tus Gastos por dia:"),
              //size: 60,
            ),*/
            TextField(
              controller: n1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Hospedaje Bs. C/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n1.clear();
                      },
                      icon: const Icon(Icons.close))),
            ),
            TextField(
              controller: n2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Alimentacion Bs. C/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n2.clear();
                      },
                      icon: const Icon(Icons.close))),
            ),
            TextField(
              controller: n3,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Transporte Bs. C/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n3.clear();
                      },
                      icon: const Icon(Icons.close))),
            ),
            /*TextField(
              controller: n4,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Cena Costo/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n4.clear();
                      },
                      icon: const Icon(Icons.close))),
            ),
            TextField(
              controller: n5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Transporte Costo/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n5.clear();
                      },
                      icon: const Icon(Icons.close))),
            ),*/
            TextField(
              controller: n6,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Numero de Personas C/Dia:",
                  suffix: IconButton(
                      onPressed: () {
                        n6.clear();
                      },
                      icon: const Icon(Icons.close))),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          suma = double.parse(n1.text) + double.parse(n2.text) + double.parse(n3.text);
          total = suma * double.parse(n6.text);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                title: const Text("Su economia tendra un:"),
                content: Text("Gasto Total: $total Bs."),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
