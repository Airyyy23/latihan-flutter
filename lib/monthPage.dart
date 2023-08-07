import 'package:flutter/material.dart';

class Monthpage extends StatefulWidget {
  const Monthpage({super.key});

  @override
  State<Monthpage> createState() => _MonthpageState();
}

class _MonthpageState extends State<Monthpage> {
  @override
  Widget build(BuildContext context) {
    List<String> months = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
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
