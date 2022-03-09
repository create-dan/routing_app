// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routing_app/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      // routes: <String, WidgetBuilder>{
      //   '/a': (BuildContext context) => NewPage(
      //         title: 'sometihin',
      //       ),
      // },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Dnyaneshwar"),
              accountEmail: Text("dnyaneshwar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("D"),
              ),
            ),
            ListTile(
              title: Text("Page One "),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage(
                          title: "PAGE ONE",
                        )));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Page TWO "),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage(
                          title: "PAGE TWO",
                        )));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Page THREE "),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage(
                          title: "PAGE THREE",
                        )));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
            Divider(),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("home page"),
        ),
      ),
    );
  }
}
