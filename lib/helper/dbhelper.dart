import 'dart:convert';

import 'package:http/http.dart' as http;

class DbHelper {
  //function get data
  Future<List> getData() async {
    var response = await http.get(
      Uri.parse(
        "https://backendapilaravel-app.herokuapp.com/api/product",
      ),
    );
    return json.decode(response.body)["data"];
  }
  //add data api 
  void addData(String nmproduct, String stock){
    String url = "https://backendapilaravel-app.herokuapp.com/api/product";
    http.post(Uri.parse(url), body: {
      "nmproduct": nmproduct,
      "stock": stock,
    });
  }
}
