import 'package:dharmik/AppBar.dart';
import 'package:dharmik/background.dart';
import 'package:dharmik/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'data.dart' as chalisa;


class DetailPage extends StatefulWidget {

  final String content;
  final String title;
  DetailPage(this.content, this.title);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
//    print(loadAsset());
    return Container(
      decoration: getBackground(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getAppBar(widget.title),
        body:Container(
          width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Text(widget.content,textAlign: TextAlign.center,
                style: TextStyle(fontSize: fontSize,)),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
