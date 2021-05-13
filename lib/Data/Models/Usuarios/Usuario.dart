
import 'package:flutter/material.dart';

class User {

   String uid;
   String primerNombre;
   String segundoNombre;
   String primerApellido;
   String segundoApellido;
   String nombreCompleto;
   String filtro;
   String correo;
   String clave;
   DateTime fechaNacimiento;
   String tipoDocumento;
   String numeroDocumento;
   String telefono;
   String genero;
   String estadoCivil;
   String urlFoto;
   String descripcionProfecional;
   List TokenUser;
   // List<ListaPublicaciones> mysPublicaciones;
   // List<ListaPublicaciones> mysApicaciones;

   User( { Key key, this.uid, this.primerNombre, this.segundoNombre, this.primerApellido, this.segundoApellido, this.nombreCompleto, this.filtro, this.correo, this.fechaNacimiento, this.tipoDocumento, this.numeroDocumento, this.telefono, this.genero, this.clave,  this.descripcionProfecional, this.estadoCivil, this.urlFoto, this.TokenUser });  // this.mysPublicaciones, this.mysApicaciones  });

   // Del JSON original nos genera un producto de clase
       User.fromJson({@required Map<String, dynamic> originalJson}) {

         if (originalJson != null) {

           this.uid = originalJson["uid"] ?? null;
           this.primerNombre = originalJson["primerNombre"];
           this.segundoNombre = originalJson["segundoNombre"];
           this.primerApellido = originalJson["primerApellido"];
           this.segundoApellido = originalJson["segundoApellido"];
           this.nombreCompleto = originalJson["nombreCompleto"];
           this.filtro = originalJson["filtro"] ;
           this.correo = originalJson["correo"] ?? null;
           this.clave = originalJson["clave"] ?? null;
           this.fechaNacimiento = originalJson["fechaNacimiento"] ?? null;
           this.tipoDocumento = originalJson["tipoDocumento"] ?? null;
           this.numeroDocumento = originalJson["telefono"] ?? null;
           this.telefono = originalJson["numeroDocumento"] ?? null;
           this.genero = originalJson["genero"] ?? null;
           this.estadoCivil = originalJson["estadoCivil"] ?? null;
           this.urlFoto = originalJson["urlFoto"] ?? null;
           this.descripcionProfecional = originalJson["descripcionProfecional"] ?? null;
           this.TokenUser = originalJson["TokenUser"] ?? null;
     }
   }

  Map<String, dynamic> toJson() => {
      'iud': uid,
      'primerNombre': primerNombre,
      'segundoNombre': segundoNombre,
      'primerApellido': primerApellido,
      'segundoApellido': segundoApellido,
      'nombreCompleto': nombreCompleto,
      'filtro': filtro,
      'correo': correo,
      'fechaNacimiento': fechaNacimiento,
      'tipoDocumento': tipoDocumento,
      'numeroDocumento': numeroDocumento,
      'telefono': telefono,
      'genero': genero,
      'estadoCivil': estadoCivil,
      'urlFoto': urlFoto,
      'descripcionProfecional': descripcionProfecional,
      'TokenUser' : TokenUser
      // 'mysPublicaciones': mysPublicaciones,
      // 'mysApicaciones': mysApicaciones
   };
}