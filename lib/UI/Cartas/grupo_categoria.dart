

//import 'package:agrostores/UI/Cartas/CardImageGactegoriaSelecionada.dart';
import 'package:agrostores/UI/Cartas/card_imagen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/UI/All.dart' as C;


class GrupoCategoria extends StatelessWidget {

  M.Categoria categoriaModel;
  GrupoCategoria(this.categoriaModel);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Text(categoriaModel.nombre,
          style: TextStyle(
              fontFamily: G.Regular,
              color: Colors.black,
              fontSize: 18.0
          ),
        ),
        centerTitle: false,

        actions: [
          IconButton(
              icon: Icon(
                  Icons.close,
                  color: Colors.grey),
              onPressed: (){
                Navigator.of(context).pop();

              })
        ],

      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          //alignment: Alignment(0.8, 0.6),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              /*child: CardImageGactegoriaSelecionada(
                pathImage: categoriaModel.foto,
                width: double.infinity,
                height: 300.0,left: 0,
              ),*/
            ),
           /* Expanded(
              child: StreamBuilder(

                  stream:  Firestore.instance.collection('publicaciones').where("categoria", isEqualTo: categoriaModel.nombre).snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshots){

                    if(snapshots.hasData){
                      List<DocumentSnapshot> docs = snapshots.data.docs;
                      return ListView.builder(
                        itemCount: docs.length,
                        itemBuilder: (context, index){
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

                                                  child:  GestureDetector(
                                                      onTap: (){
                                                        // Navigator.of(context).pushNamed('/profile', arguments: publicacione);
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));

                                                      },
                                                      child: Text("docs[index].data['nombreUser']",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            fontFamily: "Roboto-Bold",
                                                            fontSize: 17.0
                                                        ),
                                                      )
                                                  ),
                                                ),
                                                Container(

                                                  margin: EdgeInsets.only(left: 20.0),
                                                  child: Row(
                                                    children: [
                                                      Icon(Icons.event_note,
                                                        size: 5.0,
                                                        color: Colors.grey[400],
                                                      ),

                                                      Text("docs[index].data['categoria']",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                            fontFamily: G.Regular,
                                                            fontSize: 12.0,
                                                            color: Color(0xFFa3a5a7)
                                                        ),
                                                      ),



                                                    ],
                                                  )
                                                  ,
                                                )

                                              ],

                                            ),


                                          ],
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // userDescrition
                                            Container(
                                              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 12, bottom: 12),
                                              child: Text("docs[index].data['descripcion']",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontFamily: "Roboto-Light",
                                                    fontSize: 15.0
                                                ),
                                              )
                                              ,
                                            ),
                                            MaterialButton(
                                              onPressed: () {
                                                // Navigator.of(context).pushNamed('/infoPublicidad', arguments: publicacione);
                                              },


                                              color: G.colorPrimario,
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

                                          ],


                                        )
                                      ],
                                    ),

                                  ),
                                ),



                              ]
                          );

                        },
                      );

                    }else{

                      print("ENTRO EN SIN DATOS");
                      return Container(
                          child: Text("Sin publicaciones")


                      );

                    }


                  }
              ),
            )*/
      ]

      ),



    );
  }
}
