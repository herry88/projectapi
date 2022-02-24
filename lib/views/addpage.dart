import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
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
            decoration: InputDecoration(
              labelText: 'Nama Product',
              hintText: 'Nama Product',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Stock',
              hintText: 'Stock',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
