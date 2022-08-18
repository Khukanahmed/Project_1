import 'package:flutter/material.dart';
import 'package:project1/Pages/Account.dart';
import 'package:project1/Pages/Add.dart';
import 'package:project1/Pages/Chat.dart';
import 'package:project1/Pages/Home.dart';
import 'package:project1/Pages/My_add.dart';

class Nav_bar extends StatefulWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  State<Nav_bar> createState() => _Nav_bar();
}

class _Nav_bar extends State<Nav_bar> {
  int _currentIndex = 0;
  final _pages = [
    Home(),
    Myadd(),
    Add(), 
    Chat(), 
    Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (int value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout), label: 'My add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Account'),
          ]),
      body: _pages[_currentIndex],
    );
  }
}
