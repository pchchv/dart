import 'package:flutter/material.dart';
import 'about_section.dart';
import 'contact_section.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Tab> tabs = [
    const Tab(
      text: "About",
      icon: Icon(
        Icons.account_box,
      ),
    ),
    const Tab(
      text: "Contact",
      icon: Icon(
        Icons.contact_page,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 48, 160, 211),
          titleTextStyle: const TextStyle(
            color: Colors.white,
          ),
          toolbarHeight: 275,
          title: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              children: [
                profilePhotos(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: stats(),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            tabs: tabs,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children: [
            const SingleChildScrollView(
              child: AboutSection(),
            ),
            SingleChildScrollView(
              child: contactSection(),
            ),
          ],
        ),
      ),
    );
  }

  Container profilePhotos() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      width: 105,
      height: 105,
      alignment: Alignment.center,
      child: const CircleAvatar(
        radius: 50,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(
          "https://picsum.photos/300/300",
        ),
      ),
    );
  }
  Row stats() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "Photos",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "225",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Followers",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "2736",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Following",
              style: TextStyle(
                color: Color.fromARGB(255, 28, 124, 172),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              "11",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ],
    );
  }
}