
import 'package:agrostores/UI/Cartas/grupo_categoria.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/UI/All.dart' as C;


class  CardCategorias extends StatelessWidget {

 M.Categoria categoriaModel;

 CardCategorias(this.categoriaModel);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card =    Container(
      //alignment: Alignment.center,
      height: 150,
      width: 150,
      margin: EdgeInsets.only(
          left: 30.0,
          top: 20.0
      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(categoriaModel.foto),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color:  Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 1.0)
            )
          ]

      ),
    );

    return   Column(

      children: [
        GestureDetector(

          onTap: (){
            Navigator.push(context, C.TransFade( page: GrupoCategoria(categoriaModel)));
          },
          child: Container(
            //alignment: Alignment.center,
            height: 150,
            width: 150,
            margin: EdgeInsets.only(
                //left: 30.0,
                top: 20.0
            ),

            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(categoriaModel.foto),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                shape: BoxShape.rectangle,
                boxShadow: <BoxShadow>[
                  BoxShadow (
                      color:  Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 1.0)
                  )
                ]

            ),
          ),
        ),
        
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(categoriaModel.nombre,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Roboto-Bold",
            color: Colors.grey[600]
          ),
          ),
        )
      ],
    );

  }

}