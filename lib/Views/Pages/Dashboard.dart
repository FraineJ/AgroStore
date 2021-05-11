import 'package:agrostores/UI/Cartas/card_Sidebar.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(

      body: Column(
          children: [

            Container(
              height: MediaQuery.of(context).size.height * 1/4 - 20,
              color: Colors.red,
            ),

            SizedBox(
              height: 30.0,
            ),
            Container(
              
              height: 160.0,
              width: MediaQuery.of(context).size.width * 3/4 + 70,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 2/4 - 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            image:  AssetImage("assets/img/Banner.png"),
                            fit: BoxFit.cover
                        ),
                    ),
                  ),
                ],
              ),
            )
          ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,

        onPressed: () {},
      ),
    );
  }
}

