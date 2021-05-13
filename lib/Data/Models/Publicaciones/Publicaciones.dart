
import 'package:flutter/material.dart';

class User {

  String uid;
  String titulo;
  String descripcion;
  int    cantidad;
  int    cantidadPendiente;
  String estado;
  double valorUnidad;
  Map    compradores;
  // List<ListaPublicaciones> mysPublicaciones;
  // List<ListaPublicaciones> mysApicaciones;

  User( { Key key, this.uid, this.titulo, this.descripcion, this.cantidad, this.cantidadPendiente, this.estado, this.valorUnidad, this.compradores });  // this.mysPublicaciones, this.mysApicaciones  });

  // Del JSON original nos genera un producto de clase
  User.fromJson({@required Map<String, dynamic> originalJson}) {

    if (originalJson != null) {

      this.uid = originalJson["uid"] ?? null;
      this.titulo = originalJson["titulo"];
      this.descripcion = originalJson["descripcion"];
      this.cantidad = originalJson["cantidad"];
      this.cantidadPendiente = originalJson["cantidadPendiente"];
      this.estado = originalJson["estado"];
      this.valorUnidad = originalJson["valorUnidad"] ;
      this.compradores = originalJson["compradores"] ?? null;
    }
  }

  Map<String, dynamic> toJson() => {
    'iud': uid,
    'titulo': titulo,
    'descripcion': descripcion,
    'cantidad': cantidad,
    'cantidadPendiente': cantidadPendiente,
    'estado': estado,
    'valorUnidad': valorUnidad,
    'compradores': compradores
    // 'mysPublicaciones': mysPublicaciones,
    // 'mysApicaciones': mysApicaciones
  };
}