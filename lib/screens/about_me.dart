import 'package:flutter/material.dart';
import 'package:unit_6_assignment_pamplona/components/tab_widget_1.dart';
import 'package:unit_6_assignment_pamplona/components/tab_widget_2.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          backgroundColor: Colors.pink[200],
          bottom: TabBar(
            indicatorColor: Colors.green[300],
            labelColor: Colors.green[700],
            unselectedLabelColor: Colors.black54,
            tabs: const [
              Tab(icon: Icon(Icons.contacts), text: "Contacts"),
              Tab(icon: Icon(Icons.info), text: "Details"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget1(),
            TabWidget2(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green[300],
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.home, color: Colors.white),
        ),
      ),
    );
  }
}
