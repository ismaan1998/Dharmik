import 'package:flutter/cupertino.dart';

BoxDecoration getBackground(){
 return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/background.jpeg"), fit: BoxFit.cover));
}
