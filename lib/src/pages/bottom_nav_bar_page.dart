import 'package:flutter/material.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedPage = 0;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  PreferredSizeWidget _appBarCustom = AppBar(
    title: Text("Potosi"),
    backgroundColor: Colors.amberAccent,
  );

  modifyAppBar(color, titulo) {
    setState(() {
      _appBarCustom = AppBar(
        title: Text(titulo),
        backgroundColor: color,
      );
    });
  }

  void seleccionTab(int position) {
    switch(position) {
      case 0: modifyAppBar(Colors.amberAccent, "Potosi");
      break;
      case 1: modifyAppBar(Colors.deepOrangeAccent, "Tarija");
      break;
      case 2: modifyAppBar(Colors.green, "Cochabamba");
      break;
      case 3: modifyAppBar(Colors.cyanAccent, "Beni");
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarCustom,
      body: pages[selectedPage],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: 5)
            ]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0)
          ),
          child: BottomNavigationBar(
            //Solo fondo blanco
            // type: BottomNavigationBarType.fixed,

            // Vista Normal
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.pink,
            fixedColor: Colors.blue,
            unselectedItemColor: Colors.greenAccent,
            currentIndex: selectedPage,
            onTap: (position) {
              setState(() {
                selectedPage = position;
                seleccionTab(position);
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplanemode_active_sharp),
                  label: "Potosi"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplanemode_active_sharp),
                  label: "Tarija"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplanemode_active_sharp),
                  label: "Cochabamba"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.airplanemode_on),
                  label: "Beni"
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                            'images/moneda.jpg',
                            width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        //title: Text('Pub 1'),
                        subtitle: Text('Casa Nacional de Moneda'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                            'images/uyuni.jpg',
                            width: 300,
                            height: 250,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        //title: Text('Pub 1'),
                        subtitle: Text('Salar de Uyuni - Potosi'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'images/viniedos.jpg',
                          width: 300,
                          height: 150,
                          fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Ruta de vinos y singani'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'images/coimata.jpg',
                          width: 300,
                          height: 250,
                          fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Cascada de Coimata - Tarija'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'images/tunari.jpg',
                          width: 300,
                          height: 150,
                          fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Villa Tunari - Cochabamba'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'images/cochabamba.jpg',
                          width: 300,
                          height: 250,
                          fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Gastronomia y Cristo de la Concordia'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin:EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.asset(
                          'images/lomas.jpg',
                            width: 300,
                            height: 150,
                            fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Lomas Suarez - Beni'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            //margin:EdgeInsets.all(.0),
            child: Card(
              //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: InkWell(
                //onTap: () => print("ciao"),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(2.0),
                        //topRight: Radius.circular(2.0),
                      ),
                      child: Image.asset(
                          'images/trinidad.jpg',
                            width: 300,
                            height: 260,
                            fit:BoxFit.fill

                      ),
                    ),
                    ListTile(
                      //title: Text('Pub 1'),
                      subtitle: Text('Plaza Central de Beni - Trinidad'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

 }

