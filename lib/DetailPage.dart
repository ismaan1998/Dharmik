import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'data.dart' as chalisa;


class DetailPage extends StatelessWidget {

  final String content;
  DetailPage(this.content);


  @override
  Widget build(BuildContext context) {
//    print(loadAsset());
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(content,textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
