import 'package:dharmik/DetailPage.dart';
import 'package:dharmik/constants.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final Map content;

  ListPage(this.content);


  List<Container> getContent(BuildContext context) {
    List<Container> list = List<Container>();

    content.keys.forEach((element) {
      list.add(Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(element, style: TextStyle(fontSize: font_size),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(content[element])),
                );
              },
            ),
            Divider(color: Colors.blueGrey,),
          ],
        ),
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


