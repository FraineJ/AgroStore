
import 'package:agrostores/Views/Login/Login.dart';
import 'package:flutter/material.dart';



import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/Data/Globals/All.dart' as G;

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  String _email;

  @override
  void initState() {
    super.initState();
  }

  resetPassword() async {
      print(_emailController.text);
      try {
        //_auth.sendPasswordResetEmail (email: _emailController.text.replaceAll(" ", ""));
        print("ENTRO EN LA FUNCION recuperar USER ${_email}");

        showMenssage("Correo enviado", "Se ha enviado un correo a esta direccion para cambiar la contraseña");
      } catch (e) {
        showMenssage("Correo Invalido","El correo ingresado no esta registrado");
      }

  }

  showMenssage(String title,String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(
              message,
              style: TextStyle(
                fontSize: G.texto13,
              ),
            ),
            actions: <Widget>[
              Center(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text('Aceptar')),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: G.colorRojoClaro,
              width: double.infinity,
              height: 20,
              child: Image(
                image: AssetImage(
                  "assets/img/Banner.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              width: double.infinity,
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20, top: 30),
                      width: double.infinity,
                      child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                          onSaved: (input) => _email = input),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20, top: 5),
                      width: double.infinity,
                      height: 45.0,
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            resetPassword();
                          });
                        },
                        child: Text('Recuperar contraseña',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                        color: G.colorAmarilloOscuro,
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      child: Text('Regresar al Inicio de Sesion',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: G.texto16,
                            fontWeight: FontWeight.normal,
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login(
                               // registrar: newUser,
                              )),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
