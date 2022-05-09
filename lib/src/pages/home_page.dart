import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final opciones = {
    "/bottomNav": "Elige tu Destino",
    "/tabs": "Agenda tu aventura",
    "/selectableText": "Cotiza tu gasto",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Inicia tu aventura con GH"),
        ),
        body: Stack(
          children: [
            Container(
              child: Image.asset('images/bolvia.jpg',
                  width: 400,
                  height: 658,
                  fit: BoxFit.fill
              ),
            ),
            ListView(
              children: _crearItems(context),
            ),
            Positioned(
                bottom: 280.0,
                left: 10.0,
                right: 10.0,
                child: Card(
                  elevation: 9,
                  color: Colors.white.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: const [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 16.0, left: 16.0, top: 16.0),
                        child: Text(
                          "Viajar",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 16.0, left: 16.0, bottom: 16.0, top: 10.0),
                        child: Text(
                          "Viajar es vivir el proceso de gestación de una identidad global que se identifique, no con la nacionalidad o la pertenencia a una u otra región del globo, sino a el hecho de que todos formamos parte de él y somos humanos.",
                        ),
                      ),
                    ],
                  ),
                )),

          ],
          /*Imagen: Image.asset(
          'images/compras.jpg',
          width: 300,
          height: 150,
          fit:BoxFit.fill
      ),*/
        ));
  }

  List<Widget> _crearItems(context) {
    List<Widget> lista = [];
    opciones.forEach((key, value) {
      final tempWidget = ListTile(
        title: Text(value),
        leading: Icon(Icons.adjust_outlined),
        trailing: Icon(Icons.navigate_next),
        onTap: () {
          Navigator.pushNamed(context, key);
        },
      );
      lista
        ..add(tempWidget)
        ..add(Divider());
    });
    return lista;
  }
}
