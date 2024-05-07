import 'package:flutter/material.dart';
import 'package:mini_project_shoes_app/screens/components/bottom_nav.dart';
import 'package:mini_project_shoes_app/controllers/bottom_nav_controller.dart';
import 'package:mini_project_shoes_app/screens/chat_page.dart';
import 'package:mini_project_shoes_app/screens/homepage.dart';
import 'package:mini_project_shoes_app/screens/profil_page.dart';
import 'package:mini_project_shoes_app/screens/searchpage.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);

    return Scaffold(
      
      body: IndexedStack(
        index: bottomNavBarProvider.currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
