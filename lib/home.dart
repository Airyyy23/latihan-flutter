import 'package:flutter/material.dart';
import 'package:latihan_flutter_2/MonthPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: _goToMonthPage,
              child: Text("data"),
            ),
          )
        ],
      ),
    );
  }

  void _goToMonthPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Monthpage()));
  }
}