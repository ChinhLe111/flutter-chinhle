import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // for using json.decode()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'API NEWS',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The list that contains information about photos
  List _loadedData = [];

  // The function that fetches data from the API
  Future<void> _fetchData() async {
    const API_URL =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=be620e9326564691b8df9be08293fd85';

    final response = await http.get(Uri.parse(API_URL));
    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["articles"];
    setState(() {
      _loadedData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" API NEWS"),
          backgroundColor: Colors.blueAccent[700],
          centerTitle: true,
        ),
        body: SafeArea(
            child: _loadedData.length == 0
                ? Center(
              child: ElevatedButton(
                child: Text('Load Data'),
                onPressed: _fetchData,
              ),
            )
            // The ListView that displays photos
                : ListView.builder(
              itemCount: _loadedData.length,
              itemBuilder: (BuildContext ctx, index) {
                return ListTile(
                  leading: Image.network(
                    _loadedData[index]["urlToImage"],
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  title: Text(_loadedData[index]['title']),
                  subtitle:
                  Text('Author: ${_loadedData[index]["author"]}'),
                );
              },
            )));
  }
}
