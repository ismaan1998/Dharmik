import 'package:flutter/cupertino.dart';

BoxDecoration getBackground(){
 return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("images/background.jpg"), fit: BoxFit.cover));
}
