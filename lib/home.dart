import 'package:flutter/material.dart';
import 'package:latihan_flutter_2/DayPage.dart';
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
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _goToMonthPage,
                  child: Text("Data Bulan"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: _goToDayPage,
                  child: Text("Data Hari"),
                ),
              )
            ],
          ),
        ));
  }

  void _goToMonthPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Monthpage()));
  }

  void _goToDayPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DayPage()));
  }
}
