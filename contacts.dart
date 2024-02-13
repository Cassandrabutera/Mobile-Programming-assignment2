import 'package:flutter/material.dart';
import 'package:navigation/home.dart';
import 'package:navigation/calculator.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT US HERE"),
        backgroundColor: Color.fromARGB(255, 191, 75, 166),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 243, 111, 232),
              ),
            ),
            SizedBox(height: 20),
            // Contact information
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: cassandrabutera.com'),
              onTap: () {
                // Handle email tap
                // Example: launch('mailto:info@pro.com');
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: +250788719187'),
              onTap: () {
                // Handle phone tap
                // Example: launch('tel:+250788719187');
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address: Kigali-Rwanda'),
              onTap: () {
                // Handle address tap
                // Example: launch('https://maps.google.com/?q=Kigali-Rwanda');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Contact page index
        fixedColor: Color.fromARGB(255, 249, 94, 207),
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
            label: "Contact Us",
            icon: Icon(Icons.contact_mail),
          ),
        ],
        onTap: (int indexOfItem) {
          // Handle bottom navigation item taps here
          switch (indexOfItem) {
            case 0:
              // Navigate to Home screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              break;
            case 1:
              // Navigate to Calculator screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => CalculatorScreen()));
              break;
            case 2:
              // Stay on Contact Us screen
              break;
          }
        },
      ),
    );
  }
}
