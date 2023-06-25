import 'package:flutter/material.dart';
import 'package:nba_hub/view/home.dart';
import 'package:nba_hub/view/profile.dart';
import 'package:nba_hub/view/stats.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final isTablet = MediaQuery.of(context).size.shortestSide >= 600;

    List<Widget> lstBottomScreen = [
      Home(),
      const Stats(),
      const Profile(),
    ];

    return Scaffold(
      body: lstBottomScreen[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:
            isTablet ? Colors.grey[900] : const Color.fromARGB(255, 9, 8, 8),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/ball.png',
                width: isTablet ? 48.0 : 32.0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/stats.png',
                width: isTablet ? 48.0 : 32.0),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icon/user.png',
                width: isTablet ? 48.0 : 32.0),
            label: 'Settings',
          ),
        ],
        currentIndex: selectIndex,
        onTap: (index) {
          setState(
            () {
              selectIndex = index;
            },
          );
        },
      ),
    );
  }
}
