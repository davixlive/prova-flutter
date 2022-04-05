// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  void onPressed() {
    print("OnPressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            textAlign: TextAlign.center,
          ),
        ),
        body: ElevatedButton(
          child: Text("Elevated",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              )),
          onPressed: this.onPressed,
        ),
      ),
    );
  }
}
