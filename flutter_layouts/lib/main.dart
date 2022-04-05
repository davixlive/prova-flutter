import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Positioned(right: 0, top: 0, bottom: 0, child: Sidebar()),
          Positioned(left: 0, top: 0, bottom: 0, right: 100, child: Content(),)
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        color: Colors.grey.shade200,
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.add), iconSize: 20)
          ],
        )));
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Contacts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 32,
            )
            Contact(
              name: "Mario Rossi",
              address: "Via Sandro Pertini 67"
            ),
            Contact(
              name: "Mario Rossi",
              address: "Via Sandro Pertini 67"
            ),
            Contact(
              name: "Mario Rossi",
              address: "Via Sandro Pertini 67"
            ),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.w500),
        ),
      )
    );
  }
}