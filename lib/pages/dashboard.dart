import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal/pages/colleges_page.dart';
import 'package:skygoal/pages/hoempage.dart';
import 'package:skygoal/pages/top_schools.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = [
      const TopSchools(),
      const HomePage(),
      const CollegesPage(),
      const HomePage(),
    ];
    return Scaffold(
      bottomNavigationBar: buildNavigationBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  buildNavigationBar() {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color(0xFF0E3C6E),
        ),
        child: SizedBox(
          height: 71.h,
          child: BottomNavigationBar(
            unselectedItemColor: const Color(0xFFBBBBBB),
            selectedItemColor: const Color(0xFFFFFFFF),
            items: [
              BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Saved', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Saved', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.home)),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}
