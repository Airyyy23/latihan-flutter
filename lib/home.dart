import 'package:flutter/material.dart';

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
              onPressed: ,
            ),
          )
        ],
      ),
    );
  }

  void _goToMonthPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ))
  }
}