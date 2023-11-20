import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'animation.dart';
import 'image_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final pages = [
    Page1(),
    Page2(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessInternalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Demo"),
            centerTitle: true,
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.image)),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  accountName: Text("Kendal Jenner"),
                  accountEmail: Text("abcd@example.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80"),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  onTap: () {
                    // Navigate to the home page or perform any action
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  onTap: () {
                    // Navigate to the settings page or perform any action
                  },
                ),
                ListTile(
                  title: Icon(Icons.logout),
                  onTap: () {
                    // Navigate to the settings page or perform any action
                  },
                ),

                // Add more list items for different options
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.image),
                  label: 'Image',
                  backgroundColor: Colors.yellow),
            ],
          ),
          // body: pages[selectedIndex],
          body: TabBarView(
            children: [
              AnimationScreen(),
              ImageScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("1"),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("2"),
    );
  }
}

Future<void> accessInternalStorage() async {
  final directory = await getApplicationDocumentsDirectory();
  String path = directory.path;
  print('Internal storage directory: $path');
}
