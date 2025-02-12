import 'package:flutter/material.dart';
import 'package:squirrel/pages/home_page.dart';
import 'package:squirrel/pages/layout_demo.dart';

import 'first_route.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]),
              title: const Text('Tabs Demo'),
            ),
            body: const TabBarView(children: [
              LayoutDemo(),
              HomePage(),
              FirstRoute()
            ]),
          )),
    );
  }
}
