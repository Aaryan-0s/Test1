import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isTablet = screenSize.width > 600;
    final fullNameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneNumberController = TextEditingController();
    final userNameController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'images/background.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('images/avatar.jpg'),
                      ),
                      SizedBox(height: isTablet ? 20 : 10),
                      TextFormField(
                        controller: fullNameController,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 20 : 16,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: isTablet ? 18 : 15,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: isTablet ? 20 : 10),
                      TextFormField(
                        controller: emailController,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 20 : 16,
                        ),
                        decoration: InputDecoration(
                          labelText: 'email',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: isTablet ? 18 : 15,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: isTablet ? 20 : 10),
                      TextFormField(
                        controller: phoneNumberController,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 20 : 16,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: isTablet ? 18 : 15,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: isTablet ? 20 : 10),
                      TextFormField(
                        controller: userNameController,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 20 : 16,
                        ),
                        decoration: InputDecoration(
                          labelText: 'username',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: isTablet ? 18 : 15,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: isTablet ? 20 : 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                isTablet ? 16.0 : 8.0,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Change ',
                              style: TextStyle(
                                fontFamily: "Impact",
                                color: Colors.black,
                                fontSize: isTablet ? 20 : 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
