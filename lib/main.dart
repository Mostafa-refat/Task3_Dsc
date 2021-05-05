import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'TAB: 0',
      style: optionStyle,
    ),
    Text(
      'TAB: 1',
      style: optionStyle,
    ),
    Text(
      'TAB: 2',
      style: optionStyle,
    ),
    Text(
      'TAB: 3',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BottomNavigationBar with FAB'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            //label: 'Home',
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Colors.black,),
            title: Text('favourite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,color: Colors.black,),
            title: Text('info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.black,),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(40),
        child: FloatingActionButton(
          backgroundColor: Colors.teal[800],
          child: Icon(Icons.add),
          onPressed: (){},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
