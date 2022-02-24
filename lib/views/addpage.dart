import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:projectapi/helper/dbhelper.dart';

import 'homepage.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  //panggil dbhelper
  DbHelper _dbHelper = DbHelper();
  //untuk menampung data yang diinputkan
  TextEditingController controllernmproduct = TextEditingController();
  TextEditingController controllerstock = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        children: [
          TextField(
            controller: controllernmproduct,
            decoration: InputDecoration(
              labelText: 'Nama Product',
              hintText: 'Nama Product',
            ),
          ),
          TextField(
            controller: controllerstock,
            decoration: InputDecoration(
              labelText: 'Stock',
              hintText: 'Stock',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              _dbHelper.addData(
                controllernmproduct.text.trim(),
                controllerstock.text.trim(),
              );
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyHomePage(),
              ));
              
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
