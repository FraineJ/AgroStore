

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class  CardImageWithFabIcon extends StatelessWidget {

  final double height;
  final double width;
  double left;
  double bordeRadio;
  final String pathImage;
  final String text1;
  final String text2;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;
  final Color colorsTexto;
  final Function( int ) callBack;

  CardImageWithFabIcon({
    Key key,
    @required this.pathImage,
    this.callBack,
    @required this.width,
    @required this.height,
    @required this.onPressedFabIcon,
    @required this.iconData,
    this.left,
    this.bordeRadio,
    this.text1,
    this.text2,
    this.colorsTexto
  });

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
          left: left,

      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(bordeRadio)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color:  Colors.black38,
                blurRadius: bordeRadio,
                offset: Offset(0.0, 0.0)
            )
          ]

      ),
    );

    return Stack(
      //alignment: Alignment(00.1, 0.1),
      children: <Widget>[

        card,
        Padding(
          padding: const EdgeInsets.only(top: 35.0, left: 20.0),
          child: Text(text1  +  "\n" + text2,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorsTexto == null ? Colors.white: colorsTexto,
            fontSize: 20.0,
            fontFamily: "Roboto-Bold"

          ),),
        ),
        /*Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: ButtonEnviar(
            buttonText: "Explora trabajos",
            onPressed: (){
              if( callBack != null )
              callBack( 1 );
            },
          ),
        ),*/

        //FloatingActionButtonGreen(iconData: iconData, onPressed: onPressedFabIcon,)
      ],
    );
  }

}