// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ortalamahesaplama/widgets/ortalama_hesapla_page.dart';
import 'package:ortalamahesaplama/constants/app_constants.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dinamik Ortalama Hesaplama",
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrtalamaHesaplaPage(),
    );
  }
}
