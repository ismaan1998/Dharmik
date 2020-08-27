import 'package:dharmik/DetailPage.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final Map content;

  ListPage(this.content);


  List<ListTile> getContent(BuildContext context) {
    List<ListTile> list = List<ListTile>();

    content.keys.forEach((element) {
      list.add(ListTile(
        title: Text(element),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(content[element])),
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
            children: getContent(context)
        ),
      );
    }

}


