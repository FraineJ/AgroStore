import 'package:agrostores/Views/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:agrostores/Data/Models/All.dart' as M;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'AgroStores',
      home: Inicio(),

      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', '' ), // Español
      ],

    );
  }
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {



  var _funcionCarga;

  @override
  void initState() {
   // _funcionCarga = cargarDatosIniciales();
    super.initState();
  }

  /*Widget carga(){
    return CircularProgressIndicator();
  }*/


  @override
  Widget build(BuildContext context) {
    //WidgetsBinding.instance.addPostFrameCallback((_) => G.calcularDatos(context) );

    return Login();

    return Login();
  }
}

