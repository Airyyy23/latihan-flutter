import 'package:flutter/material.dart';

class DayPage extends StatefulWidget {
  const DayPage({super.key});

  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  final List hari = [
    "Senin",
    "Selasa",
    "Rabu",
    "Kamis",
    "Jum'at",
    "Sabtu",
    "Minggu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Hari",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    hari[index],
                  ),
                ),
              );
            },
            itemCount: hari.length,
          ),
        ));
  }
}
