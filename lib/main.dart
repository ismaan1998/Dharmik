import 'package:dharmik/ListPage.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {


  List<ListTile> getContent(BuildContext context) {
    List<ListTile> list = List<ListTile>();

    categories.keys.forEach((element) {
      list.add(ListTile(
        title: Text(element),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ListPage(categories[element])),
          );
        },
      ));
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
