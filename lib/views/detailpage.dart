import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  List? list;
  int index;
  DetailPage({Key? key, this.list, required this.index}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.list![widget.index]['nmproduct']),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.only(
              top: 20.0, right: 12.0, left: 12.0, bottom: 12.0),
          children: [
            Container(
              height: 59.0,
              child: Text(
                "Nama Product : ${widget.list![widget.index]['nmproduct']}",
                style:const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 59.0,
              child: Text(
                "Stock : ${widget.list![widget.index]['stock']}",
                style:const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
