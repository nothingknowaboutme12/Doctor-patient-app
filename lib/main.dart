import 'package:doctor/screen/reported_ui_screen.dart';
import 'package:doctor/screen/test_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReportPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReportPage extends StatefulWidget {
  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  int selectIndex = 0;
  final List<Widget> _pages = [
    const ReportUi(),
    TestPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(selectIndex == 0 ? "Result" : "Test"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade300,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Result"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Test")
        ],
      ),
      body: _pages[selectIndex],
    );
  }
}
