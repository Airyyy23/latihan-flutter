import 'package:flutter/material.dart';
import 'package:latihan_flutter_2/DayPage.dart';
import 'package:latihan_flutter_2/MonthPage.dart';
import 'package:latihan_flutter_2/timpage.dart';

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
            'Home Page'
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
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: _goTotimepage,
                  child: Text("Data tim"),
                ),
              ),
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
  void _goTotimepage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => timpage()));
  }
}
