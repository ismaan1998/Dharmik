import 'package:flutter/material.dart';

AppBar getAppBar(String title){
  return AppBar(title: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
  backgroundColor: Colors.white10,);
}
