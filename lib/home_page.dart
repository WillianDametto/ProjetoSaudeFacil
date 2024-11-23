import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_content_page.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/register_screen.dart';
import 'package:flutter_application_1/reset_password_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//Barra de atalho no final da pagina
class _HomePageState extends State<HomePage> {
  final list = [
    const HomeContentScreen(),
    HomeContentScreen(),
    HomeContentScreen(),
    HomeContentScreen()
  ];
  int _selectedIndex = 0;
  void _onBarItemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saúde Fácil'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: list[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBarItemClick,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            activeIcon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            activeIcon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            activeIcon: Icon(Icons.person),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
}
