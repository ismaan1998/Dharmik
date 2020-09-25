import 'package:dharmik/AppBar.dart';
import 'package:dharmik/ListPage.dart';
import 'package:dharmik/background.dart';
import 'package:dharmik/variables.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Container> getContent(BuildContext context) {
    List<Container> list = List<Container>();

    categories.keys.forEach((element) {
      list.add(
        Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  element,
                  style: TextStyle(fontSize: fontSize),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ListPage(categories[element], element),
                    ),
                  );
                },
              ),
              Divider(
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      );
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBackground(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getAppBar("धार्मिक"),
        body: ListView(
          children: getContent(context),
        ),
      ),
    );
  }
}
