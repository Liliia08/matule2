import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'main_page.dart';
import 'profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainPage(),
    Container(color: Colors.white, child: Center(child: Text('Каталог'))),
    Container(color: Colors.white, child: Center(child: Text('Проекты'))),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: ui.tabbar.create(
        initialIndex: _selectedIndex,
        onIndexChanged: (index) {
          setState(() => _selectedIndex = index);
        },
      ),
    );
  }
}