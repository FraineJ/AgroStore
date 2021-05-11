

import 'package:flutter/material.dart';

import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Views/Home/Home.dart';
import 'ForgotPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  String _email, _password;

  /*checkAuthentification() async {
    //SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    _auth.onAuthStateChanged.listen((user) {
      if (user != null) {
        setState(() {
          _isLoading = false;
        });

        var token = user.uid;
        setPreferencer(user.uid, user.displayName, user.email, true);
        sharedPreferences.setString("token", token);
        print(" Por shared ${sharedPreferences.getString("token")}");
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Home()),
            (Route<dynamic> route) => false);
      }
    });
  }*/

  @override
  void initState() {
    super.initState();
   // this.checkAuthentification();
  }

  login() async {


    Navigator.push(context,MaterialPageRoute( builder: (context) => HomePages()));

   /* if (_formKey.currentState.validate() == false) {
      setState(() {
        _isLoading = false;
      });
    } else {
      _formKey.currentState.save();

      try {
        /*FirebaseUser user = await _auth.signInWithEmailAndPassword(
            email: _email.replaceAll(" ", ""),
            password: _password.replaceAll(" ", ""));
        print("ENTRO EN LA FUNCION LOGIN USER ${_email}");*/
      } catch (e) {
        showMenssage();
      }
    }*/
  }

  showMenssage() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ingreso invalido'),
            content: Text(
              "El usuario o conttraseña  es incorrecto.\nVuelva a intentarlo.",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            actions: <Widget>[
              Center(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _isLoading = false;
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text('Aceptar')),
              ),
            ],
          );
        });
  }

  navigateToSignUp() async {
    Navigator.of(context).pushNamed('/SignUp');
  }

  @override
  Widget build(BuildContext context) {
    //final newUser = new M.User();
    return Scaffold(

        body: SingleChildScrollView(

           child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(

              height: G.alto,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    width: double.infinity,

                    child: Image(
                      image: AssetImage(
                        "assets/img/logoCameJob.jpeg",
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
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 30),
                            width: double.infinity,
                            child: TextFormField(
                                // controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (input) {
                                  if (input.isEmpty) return 'Enter Email';
                                },
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    prefixIcon: Icon(Icons.email)),
                                onSaved: (input) => _email = input),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 5),
                            width: double.infinity,
                            child: TextFormField(
                                //controller: _passwordController,
                                validator: (input) {
                                  if (input.length < 8)
                                    return 'Provide Minimum 8 Character';
                                },
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                obscureText: true,
                                onSaved: (input) => _password = input),
                          ),
                          SizedBox(height: 20),
                          Container(
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 5),
                            width: double.infinity,
                            height: 45.0,
                            child: RaisedButton(
                              onPressed: () {
                                setState(() {
                                  _isLoading = true;
                                  login();
                                });
                              },
                              child: Text('Iniciar sesión',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Text('¿Olvidaste tu contraseña?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: G.texto16,
                          fontWeight: FontWeight.normal,
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword(
                                  //registrar: newUser,
                                )),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    child: Text('Crear cuenta en CameJob',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: G.texto20,
                            fontWeight: FontWeight.bold)),
                    onTap: () {
                     /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUp(
                                  registrar: newUser,
                                )),
                      );*/
                    },
                  ),
                ],
              ),
            ),
        )
    );
  }
}
