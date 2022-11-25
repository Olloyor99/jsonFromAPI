import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map data = {};
  void initState() {
    fromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Dars 23 API"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data["data"][index]["id"].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  fromApi() async {
    Uri url = Uri.parse('https://gorest.co.in/public-api/users');
    final newdata = await http.get(url);
    data = jsonDecode(newdata.body);
    debugPrint(data.toString());
  }
}
