import 'package:dharmik/AppBar.dart';
import 'package:dharmik/DetailPage.dart';
import 'package:dharmik/background.dart';
import 'package:dharmik/variables.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  final Map content;
  final String title;
  ListPage(this.content, this.title);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Container> getContent(BuildContext context) {
    List<Container> list = List<Container>();

    widget.content.keys.forEach((element) {
      list.add(Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(element, style: TextStyle(fontSize: fontSize),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(widget.content[element], element)),
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
      return Container(
        decoration: getBackground(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: getAppBar(widget.title),
          body: ListView(
              children: getContent(context)
          ),
        ),
      );
    }
}


