import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  List? list;
  int index;
  DetailPage({ Key? key,this.list, required this.index }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}