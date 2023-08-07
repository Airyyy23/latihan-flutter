import 'package:flutter/material.dart';

class timpage extends StatefulWidget {
  const timpage({super.key});

  @override
  State<timpage> createState() => _timpageState();
}
class _timpageState extends State<timpage> {
  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'Seno',
      'arya',
      'rafi'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Bulan"),
      ),
      body: ListView.builder(
        itemCount: months.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 1.0),
                )),
            child: ListTile(
              title: Text(
                months[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

