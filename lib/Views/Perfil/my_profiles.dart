
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/UI/All.dart' as C;

import '../Login/Login.dart';

class MyProfile extends StatefulWidget {

 // M.Publicacion publicacion;

 // MyProfile({ this.publicacion });
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>  {

  @override
  void initState() {

   // this.getData();
   // this.sDatosEstudioUser();
   // this.sDatosExperienciaUser();
  //  this.sDatosUbicacionUser();
    super.initState();


  }



/*
  final MisPublicaciones = FutureBuilder(


      future:  Firestore.instance.collection('publicaciones').where("idUser", isEqualTo: G.usuarioActual.uid).getDocuments(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshots){

        if(!snapshots.hasData){
          return Center(
            child: CircularProgressIndicator(),
          );

        }else{
          List<DocumentSnapshot> docs = snapshots.data.documents;


          return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index){
                // final M.Publicacion publicacione = docs[index];
                return Stack(


                    alignment: Alignment(0.8, 0.6),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Card(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 20.0,
                                        left : 20.0,
                                        bottom: 15.0

                                    ),
                                    width: 50.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 2,
                                          color: Colors.grey[400],
                                        ),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage("assets/img/sin-imagen.png"),
                                        )
                                    ),

                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left: 20.0, top: 10.0),


                                          child: Text("Fraider Simarra",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: "Roboto-Bold",
                                                fontSize: 17.0
                                            ),
                                          )

                                      ),


                                    ],

                                  ),


                                ],
                              ),

                              Divider(
                                height: 2,

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(

                                    margin: EdgeInsets.only(left: 20.0, top:7.0, bottom: 7.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.event_note,
                                          size: 20.0,
                                          color: Colors.grey[700],
                                        ),

                                        Text("Hoy",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "SFProDisplay-Regular",
                                              fontSize: 12.0,
                                              color: Color(0xFFa3a5a7)
                                          ),
                                        ),



                                      ],
                                    )
                                    ,
                                  ),

                                  Container(

                                    margin: EdgeInsets.only(left: 20.0, top:7.0, bottom: 7.0 ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on,
                                          size: 20.0,
                                          color: Colors.grey[700],
                                        ),

                                        Text("Atlantico",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "SFProDisplay-Regular",
                                              fontSize: 12.0,
                                              color: Color(0xFFa3a5a7)
                                          ),
                                        ),



                                      ],
                                    )
                                    ,
                                  ),

                                  Container(

                                    margin: EdgeInsets.only(right: 20.0, top:7.0, bottom: 7.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.monetization_on,
                                          size: 20.0,
                                          color: Colors.grey[700],
                                        ),

                                        Text(docs[index].data['valor'].toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "SFProDisplay-Regular",
                                              fontSize: 12.0,
                                              color: Color(0xFFa3a5a7)
                                          ),
                                        ),



                                      ],
                                    )
                                    ,
                                  ),
                                ],
                              ),

                              Divider(
                                height: 2,

                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(

                                    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 12, bottom: 12),
                                    child: RichText(
                                        maxLines: 5,
                                        overflow: TextOverflow.ellipsis,
                                        strutStyle: StrutStyle(fontSize: 12.0),
                                        text: TextSpan(
                                          style: TextStyle(color: Colors.black),
                                          text: docs[index].data['descripcion'].toString(),

                                        )
                                    ),
                                  ),


                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(
                                        minWidth: 200.0,
                                        onPressed: () {
                                          // Navigator.of(context).pushNamed('/infoPublicidad', arguments: widget.publicacione);
                                        },


                                        color: Colors.yellow,
                                        textColor: Colors.grey,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye,
                                              size: 26,
                                            ),
                                            Text("Ver")
                                          ],
                                        ),


                                      ),

                                      MaterialButton(
                                        minWidth: 200.0,
                                        onPressed: () {
                                          //  Navigator.of(context).pushNamed('/infoPublicidad', arguments: widget.publicacione);
                                        },


                                        color: Colors.yellow,
                                        textColor: Colors.grey,
                                        child: Row(
                                          children: [

                                            Padding(
                                              padding: const EdgeInsets.only(right: 10.0),
                                              child: Text("Interesados"),
                                            ),
                                            Text(docs[index].data['Aplicados'].toString()),
                                          ],
                                        ),


                                      ),
                                    ],
                                  ),

                                ],


                              )
                            ],
                          ),

                        ),
                      ),



                    ]
                );

              }
          );

        }
      }
  );
*/

/*
  Widget carga(){

    return  C.CartaBase(
      margenArriba: G.margen,
      margenAbajo: G.margen,
      paddingLados: true,
      children: [
        Container(
          height: G.alto * 0.17,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  children: [
                    C.SkeletonCircular(),
                    C.Margen(horizontal: G.margen,),
                    C.SkeletonBarra(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }


  Future getData() async{
    FirebaseUser user  = await _auth.currentUser();

    var firestore =  Firestore.instance;
    QuerySnapshot sDato = await firestore.collection("user").where('uid',
        isEqualTo: G.usuarioActual.uid).getDocuments();
    return sDato.documents;
  }


  Future sDatosEstudioUser() async{
    FirebaseUser user  = await _auth.currentUser();

    var firestore =  Firestore.instance;
    QuerySnapshot sDato = await firestore.collection("estudios").where('IdUser',
        isEqualTo: G.usuarioActual.uid).getDocuments();
    return sDato.documents;
  }


  Future sDatosExperienciaUser() async{
    FirebaseUser user  = await _auth.currentUser();

    var firestore =  Firestore.instance;
    QuerySnapshot sDato = await firestore.collection("expelaborales").where('IdUser',
        isEqualTo: user.uid).getDocuments();
    if(sDato.documents.isNotEmpty){
      return sDato.documents;
    }else{
      return print("NO HAY DATOS");
    }

  }

  FirebaseUser user;
  Future sDatosUbicacionUser() async{
    var firestore =  Firestore.instance;
    user  = await _auth.currentUser();

    QuerySnapshot sDato = await firestore.collection("ubicaciones").where('IdUser',
        isEqualTo: G.usuarioActual.uid).getDocuments();
    return sDato.documents;
  }

  signOut()async{

    _auth.signOut();
  }

*/


  @override
  Widget build(BuildContext context) {

    //Widget del Header del Usuario

    Widget mostrarPerfil(/*AsyncSnapshot snapshot*/){

     /* DocumentSnapshot data = snapshot.data[0];
      if(!snapshot.hasData || snapshot.hasError){
        print("Usuario no logueado");

      }else{*/

        return  SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              C.CartaBase(
                margenArriba: 0.0,
                margenAbajo: 0.0,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 1/4,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0, top: 15),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4,
                                        color: Theme.of(context).scaffoldBackgroundColor
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2, blurRadius: 10,
                                          color: Colors.black.withOpacity(0.1),
                                          offset: Offset(0,10)
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,

                                      image:  AssetImage("assets/img/sin-imagen.png")
                                      //:CachedNetworkImageProvider( data['urlFoto'],),
                                    )
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                right: 0,
                                child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 3,
                                        color: Theme.of(context).scaffoldBackgroundColor,
                                      ),
                                      color: Colors.blue,

                                    ),
                                    child: InkWell(child: Container(
                                      child: Icon(Icons.edit,
                                          color: Colors.white),
                                    ),

                                        onTap: (){
                                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                                        })
                                )
                            ),

                          ],
                        ),
                        Flexible(
                          child: Container(

                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Text("Fraider"+ " " + "Simarra Aguilar",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 20.0,
                                    ),
                                  ),

                                  Text("frayder199@gmail.com",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),


                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],

              ),

            ],

          ),
        );
      //}
    }

    Widget sesionEstudiosUser(){

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Estudió en destacados",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey[800],
                      fontFamily: "Roboto-Bold"


                  ),
                ),
              ),
              GestureDetector(
                child: Text('Editar',
                  style: TextStyle(
                    fontSize: G.texto17,
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                 // Navigator.push(context, C.TransFade(page: AddExperienciaLaborar() ));
                },
              ),
            ],
          ),

          GestureDetector(
            onTap: () {
            //  Navigator.push(context, C.TransFade(page: AddExperienciaLaborar() ));
            },
            child: Row(
              children: [
                Icon(Icons.school,
                  color: Colors.grey[800],
                ),
                C.Margen(horizontal: G.margen,),
                Flexible(
                  child: Text('Añadir estudios',
                    style: TextStyle(
                      fontSize: G.texto15,
                      color: Colors.blue,
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Icon(Icons.house_rounded,
                color: Colors.grey[800],
              ),
              C.Margen(horizontal: G.margen,),
              Flexible(
                child: Text('Añadir Residencia',
                  style: TextStyle(
                    fontSize: G.texto15,
                    color: Colors.blue,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Icon(
                Icons.build,
                color: G.colorGrisOscuro,
              ),
              C.Margen(horizontal: G.margen,),
              Flexible(
                child: Text('Añadir Experiencia Laboral',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue,
                  ),
                ),
              ),

            ],
          ),

        ],
      );
    }


    return  Scaffold(
      body:  Container(
        height: G.alto,
        child: Column(
            children: [
             mostrarPerfil(),
              /*FutureBuilder(
                future: getData(),
                builder: ( _ , snapshot){

                  switch(snapshot.connectionState){
                    case  ConnectionState.waiting:
                      return carga();
                    case ConnectionState.none:
                      return carga();
                    case ConnectionState.active:
                      return mostrarPerfil(snapshot);
                    case ConnectionState.done:
                      return mostrarPerfil(snapshot);
                  }

                  return mostrarPerfil(snapshot);

                },
              ),*/



              /*Container(
                height: G.alto * 0.5,
                child: StreamBuilder(

                    stream: _db.getUserPublicaciones(G.usuarioActual.uid),
                    builder: (context, AsyncSnapshot<List<M.Publicacion>> snapshot){

                      if(snapshot.hasError){
                        print("Este es el error ${snapshot.hasError}");
                        return Center(child: Text("ERROR"));
                      }

                      if(!snapshot.hasData){
                        return Center(child: loading());

                      }else{

                        List<M.Publicacion> Publicaciones = snapshot.data;

                        return ListView.builder(
                          //controller: _scrollController,
                            itemCount: Publicaciones.length,
                            itemBuilder: (context, index){
                              final M.Publicacion publicacion = Publicaciones[index];
                              return CartaPublicacionUser(publicacion);
                            }
                        );

                      }
                    }
                ),
              ),*/


            ]
        ),
      ),
    );

  }

}