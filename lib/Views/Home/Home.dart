import 'package:agrostores/Views/Pages/Chats.dart';
import 'package:agrostores/Views/Pages/Dashboard.dart';
import 'package:agrostores/Views/Pages/Profile.dart';
import 'package:agrostores/Views/Pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


import 'package:agrostores/Data/Globals/All.dart' as G;
import 'package:agrostores/Data/Models/All.dart' as M;
import 'package:agrostores/UI/All.dart' as C;

class HomePages extends StatefulWidget {
  const HomePages({Key key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currenTab = 0;
  final List<Widget> screens = [Dashboard(), Chats(), Profile(), Settings()];

  // Active Page Tab

  Widget currentScreen = Dashboard(); //initial screen in viewport

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Bienvenido")

        ,
      ),*/
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      //Fab Button
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orangeAccent,
        onPressed: () {},
      ),

      // FAb Position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/

      // Button App Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(

                onPressed: () {
                  setState(
                    () {
                      currentScreen = Dashboard();
                      currenTab = 0;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: currenTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Inicio',
                      style: TextStyle(
                        color: currenTab == 0 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                        () {
                      currentScreen = Chats();
                      currenTab = 1;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.chat,
                      color: currenTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(
                        color: currenTab == 1 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                        () {
                      currentScreen = Profile();
                      currenTab = 2;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: currenTab == 2 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: currenTab == 2 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                        () {
                      currentScreen = Settings();
                      currenTab = 3;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      color: currenTab == 3 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: currenTab == 3 ? Colors.blue : Colors.grey,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /*body: Column(
        children: [
          ListView(
            children: [
              SizedBox(
                height: 200.0,
                width: double.infinity,
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: list.map((item) => Container(
                    child: Center(
                        child: Text(item.toString())
                    ),
                    color: Colors.green,
                  )).toList(),

                ),
              )
            ],
          ),
        ],
      )*/
    );
  }
}
