import 'package:banking/ui/screens/history_screen.dart';
import 'package:banking/ui/screens/homescreen.dart';
import 'package:banking/ui/screens/send_screen.dart';
import 'package:banking/ui/widgets/manage_dialog.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  List<Widget> screens = [
    const Homescreen(),
    const SendScreen(),
    const HistoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[pageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: pageIndex == 0
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: FloatingActionButton.small(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AddCardDialog();
                      },
                    );
                  },
                  child: const Text("Add a Card"),
                ),
              ),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            pageIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.send), label: "Send"),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: "History"),
          ]),
    );
  }
}
