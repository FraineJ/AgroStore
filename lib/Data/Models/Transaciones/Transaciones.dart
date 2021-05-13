
import 'dart:ffi';

import 'package:flutter/material.dart';

class User {

  String   uid;
  String   idComprador;
  String   nombreComprador;
  String   idVendedor;
  String   nombreVendedor;
  String   estado;
  DateTime fechaRegistro;
  String   idPublicacion;
  String   tituloPublicacion;
  String   DescripcionPublicacion;
  int      cantidad;
  Double   valorUnitario;
  Double   ValorTotal;
  // List<ListaPublicaciones> mysPublicaciones;
  // List<ListaPublicaciones> mysApicaciones;

  User(
        {
            Key key,
            this.uid,
            this.idComprador,
            this.nombreComprador,
            this.idVendedor,
            this.nombreVendedor,
            this.estado,
            this.fechaRegistro,
            this.idPublicacion,
            this.tituloPublicacion,
            this.DescripcionPublicacion,
            this.cantidad,
            this.valorUnitario,
            this.ValorTotal
        }
      );  // this.mysPublicaciones, this.mysApicaciones  });

  // Del JSON original nos genera un producto de clase
  User.fromJson({@required Map<String, dynamic> originalJson}) {

    if (originalJson != null) {

      this.uid = originalJson["uid"] ?? null;
      this.idComprador = originalJson["idComprador"];
      this.nombreComprador = originalJson["nombreComprador"];
      this.idVendedor = originalJson["idVendedor"];
      this.nombreVendedor = originalJson["nombreVendedor"];
      this.estado = originalJson["estado"];
      this.fechaRegistro = originalJson["fechaRegistro"] ;
      this.idPublicacion = originalJson["idPublicacion"] ?? null;
      this.tituloPublicacion = originalJson["tituloPublicacion"] ?? null;
      this.DescripcionPublicacion = originalJson["DescripcionPublicacion"] ?? null;
      this.cantidad = originalJson["cantidad"] ?? null;
      this.valorUnitario = originalJson["valorUnitario"] ?? null;
      this.ValorTotal = originalJson["ValorTotal"] ?? null;
    }
  }

  Map<String, dynamic> toJson() => {
    'iud': uid,
    'idComprador': idComprador,
    'nombreComprador': nombreComprador,
    'idVendedor': idVendedor,
    'nombreVendedor': nombreVendedor,
    'estado': estado,
    'fechaRegistro': fechaRegistro,
    'idPublicacion': idPublicacion,
    'fechaRegistro': fechaRegistro,
    'tituloPublicacion': tituloPublicacion,
    'DescripcionPublicacion': DescripcionPublicacion,
    'cantidad': cantidad,
    'valorUnitario': valorUnitario,
    'ValorTotal': ValorTotal

    // 'mysPublicaciones': mysPublicaciones,
    // 'mysApicaciones': mysApicaciones
  };
}