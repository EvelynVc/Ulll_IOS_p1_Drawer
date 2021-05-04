import 'package:flutter/material.dart';

void main() => runApp(EveApp());

class EveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: EsScaffold(title: 'Flutter en Español Eve'),
    ); // fin de material
  } // fin de widget
} // fin de EveApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} // fin de EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ), //fin de Child IMAGE ISSET
      ), //fin de center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ), // fin de flutter Logo
          Text('Drawer 1 eve'),
        ] //fin de widget
            ), //fin de columna
      ), //fin de Drawer

      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ), // fin de flutter Logo 2
          Text('Drawer 2 eve end'),
        ] //fin de widget 2
            ), //fin de columna 2
      ), //fin de Drawer 2
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 100.0,
                    ),
                    Text('Botton sheet'),
                  ],
                ),
              ); //fin de contenedor
            }, //fin de builder
          ); //fin de la hoja/sheet
        }, //fin de Onpressed
      ), //fin de floating ACTION BUTTON FLOTANTE
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ), //fin de flutter logo
              Text('btn Eve NavigationBar con BottomAppBar')
            ],
          ), //fin de roww
        ), //fin de child container
      ), //fin del boton inferior navegation bar
    ); // fin de Saffold
  } //fin de widget construir
} // fin de state<EsScaffold>
