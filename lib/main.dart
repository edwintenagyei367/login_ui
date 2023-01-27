import 'package:flutter/material.dart';
import './homepage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.transparent
      ),
      home: Homepage(),
    )
  );
}