import 'package:flutter/material.dart';

class TabBarsPage extends StatelessWidget {
  const TabBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      //debugShowCheckedModeBanner: false,
      title: 'Agenda tu aventura',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? _selectedDate1;
  DateTime? _selectedDate2;

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030)
    ).then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate1 = pickedDate;
        //_selectedDate2 = pickedDate;
      });
    });
  }

  void _presentDatePicker2() {

    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030)
    ).then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        //_selectedDate1 = pickedDate;
        _selectedDate2 = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Agenda tu Aventura'),
      ),
      body: Center(
          child: Column(
            children: [
              Image.asset(
                'images/agendar.jpg',
               width: 300,
              height: 150,
              fit:BoxFit.fill
              ),

              Positioned(
                  //bottom: 100.0,
                  left: 10.0,
                  right: 10.0,
                  child: Card(
                    elevation: 9,
                    color: Colors.white.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
                          child: Text("Recuerda", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0, top: 10.0),
                          child: Text("El viaje te va a proporcionar una desconexión de rutina y del entorno en el que te mueves. Por eso empieza y registra una fecha de INICIO Y CULMINACION de tu aventura: ",),
                        ),
                      ],
                    ),
                  )
              ),

              ElevatedButton(
                  onPressed: _presentDatePicker,
                  child: const Text('Fecha de Inicio')),

              // display the selected date
              Container(
                padding: const EdgeInsets.all(30),
                child: Text(
                  _selectedDate1 != null
                      ? _selectedDate1.toString()
                      : 'Fecha no seleccionada!',
                  style: const TextStyle(fontSize: 20 ),
                ),
              ),
              ElevatedButton(
                  onPressed: _presentDatePicker2,
                  child: const Text('Fecha de Culminacion')),

              // display the selected date
              Container(
                padding: const EdgeInsets.all(30),
                child: Text(
                  _selectedDate2 != null
                      ? _selectedDate2.toString()
                      : 'Fecha no seleccionada!',
                  style: const TextStyle(fontSize: 20 ),
                ),
              ),
            ]),
      ),
    );
  }
}


