import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Le tue carte di credito"),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: [
        // ignore: prefer_const_constructors
        BankView(bank: "SanPaolo"),
        // ignore: prefer_const_constructors
        BankView(bank: "Banca Sella"),
      ]),
    );
  }
}

class BankView extends StatefulWidget {
  const BankView({Key? key, required this.bank}) : super(key: key);
  final String bank;
  @override
  State<BankView> createState() {
    return _BankViewState();
  }
}

class _BankViewState extends State<BankView> {
  bool active = false;

  void toggleCard() {
    setState(() {
      active = !active;
    });
    print(active);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: active ? Colors.white : Colors.grey.shade400,
      child: Row(children: <Widget>[
        const Icon(Icons.credit_card, size: 14),
        const SizedBox(
          width: 16,
        ),
        Text(
          widget.bank,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Container(),
        ),
        TextButton(
            onPressed: toggleCard, child: Text(active ? "Disattiva" : "Attiva"))
      ]),
    );
  }
}
