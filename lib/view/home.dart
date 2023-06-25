import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isTablet = MediaQuery.of(context).size.shortestSide >= 600;
    final double iconSize = isTablet ? 40.0 : 24.0;
    final double fontSize = isTablet ? 20.0 : 16.0;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // Top Calendar Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back,
                          color: Colors.white, size: iconSize),
                      const SizedBox(width: 8.0),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Icon(Icons.arrow_forward,
                          color: Colors.white, size: iconSize),
                    ],
                  ),
                  Icon(Icons.calendar_today,
                      color: Colors.white, size: iconSize),
                ],
              ),
            ),

            // Container with Grey Background and Circular Avatars
            Positioned(
              left: 0,
              right: 0,
              top: isLandscape ? 50 : 50,
              child: Container(
                padding: EdgeInsets.all(isTablet ? 60.0 : 30.0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 37, 36, 36),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: isTablet ? 40.0 : 24.0,
                          backgroundImage: const NetworkImage(
                              "https://c4.wallpaperflare.com/wallpaper/140/142/476/nba-basketball-sports-golden-state-warriors-wallpaper-preview.jpg"),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'Grizzles',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          'Score: 100',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                      ],
                    ),
                    if (!isLandscape)
                      Text(
                        'VS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize,
                        ),
                      ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: isTablet ? 40.0 : 24.0,
                          backgroundImage: const NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxWkcSaTjfYle_mhN45QOgtk3BdhoH9CspJQ&usqp=CAU"),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          'LAC',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          'Score: 200',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
