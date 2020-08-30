import 'package:dharmik/ListPage.dart';
import 'package:dharmik/constants.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  List<Container> getContent(BuildContext context) {
    List<Container> list = List<Container>();

    categories.keys.forEach((element) {
      list.add(
        Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(element, style: TextStyle(fontSize: font_size),),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListPage(categories[element]),),
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
    return Scaffold(
      body: ListView(
        children: getContent(context),
      ),
    );
  }
}
