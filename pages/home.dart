import 'dart:async';

import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title : Text('Test Profiling'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.blue,
                  Colors.lightBlueAccent,
                ])
              ),
           child: Text('Welcome')),
            ListTile(
              title: Text('Importer'),
              onTap: (){},
                     ),
            ListTile(
              title: Text('Exporter'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Test a corriges'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Test corriges'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Resultats'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Generer'),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }

}