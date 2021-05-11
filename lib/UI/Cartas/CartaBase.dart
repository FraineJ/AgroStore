import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/UI/All.dart' as C;

class CartaBase extends StatelessWidget {

  final List<Widget> children;
  final double paddingArriba, paddingAbajo, margenArriba, margenAbajo, ancho, margenIzquierdo, margenDerecho;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final Color color, colorResaltado;
  final bool linea, paddingLados;

  CartaBase( {Key key, this.paddingLados ,this.colorResaltado,this.margenIzquierdo, this.margenDerecho, this.ancho, this.linea, this.color, this.children, this.paddingArriba, this.paddingAbajo, this.margenArriba, this.margenAbajo, this.mainAxisAlignment, this.crossAxisAlignment})  : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      color: color != null ? color :G.colorBlanco,
      width: ancho != null ? ancho :G.ancho,
      margin: EdgeInsets.only(
        top:  margenArriba != null ? margenArriba : 0.0,
        bottom: margenAbajo != null ? margenAbajo : G.margen,
        left: margenIzquierdo != null ? margenIzquierdo: 0.0,
        right: margenDerecho != null ? margenDerecho: 0.0,
      ),

      child: Stack(
        children: [

          Positioned.fill(
            child: Container(color: colorResaltado != null ? colorResaltado : G.colorBlanco ),
          ),

          Column(
            mainAxisAlignment: mainAxisAlignment != null ? mainAxisAlignment : MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment != null ?  crossAxisAlignment : CrossAxisAlignment.start,
            children: <Widget>[
              linea == null || linea == true ? C.BarraCorte() : Container(),
              Container(
                margin: EdgeInsets.only(top: paddingArriba != null ? paddingArriba : 0.0 ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: paddingLados != null && paddingLados == true ? G.margenLateral:0.0),
                child: Column(children: children),
              ),
              Container(
                margin: EdgeInsets.only(bottom:  paddingAbajo != null ? paddingAbajo : 0.0),
              ),
              linea == null || linea == true ? C.BarraCorte() : Container(),
            ],
          ),
        ],
      ),
    );
  }
}

