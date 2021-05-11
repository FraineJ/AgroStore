import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Categoria {

  String uid;
  String nombre;
  String foto;
  String icon;

  Categoria({ Key key, this.nombre, this.foto, this.uid});
  
  Categoria.fromFirestore(DocumentSnapshot doc) :
    uid = doc.id,
    nombre = doc.data()['nombre'],
    foto = doc.data()['foto'],
    icon = doc.data()['icon'];


  static List<Categoria> toCategoriaList(QuerySnapshot query){
    return query.docs.map((doc) => Categoria.fromFirestore(doc)).toList();
  }

}






