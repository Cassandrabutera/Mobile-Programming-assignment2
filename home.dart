import 'package:flutter/material.dart';
import 'package:navigation/calculator.dart';
import 'package:navigation/contacts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        backgroundColor: Color.fromARGB(255, 247, 135, 189),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Welcome to Cassandra App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'This is a description of the app. You can add any text or information you want to display here.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 550.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // Add your widgets here
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: Text('Get Started'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 137, 212),
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color.fromARGB(255, 249, 177, 231)),
                  accountName: Text(
                    "Cassandra Butera",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("cassandrabutera01@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 212, 248, 231),
      
                    ),
                  ),
                ),
              
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text(' My Profile '),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.workspace_premium),
                title: const Text(' My Calculator '),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Color.fromARGB(255, 247, 108, 201),
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Calculator",
            icon: Icon(Icons.workspace_premium),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int indexOfItem) {
          // Handle bottom navigation item taps here
          switch (indexOfItem) {
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsPage()));
              break;
          }
        },
      ),
    );
  }
}
