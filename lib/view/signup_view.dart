import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  DateTime? selectedDate;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final fullName = _fullNameController.text;
      final email = _emailController.text;
      final password = _passwordController.text;

      // Perform signup logic or data submission
      // ...

      // Clear the form fields
      _fullNameController.clear();
      _emailController.clear();
      _passwordController.clear();
    }
  }

  void _showDatePicker() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isTablet = screenSize.width > 600; // Adjust as needed

    return Scaffold(
      appBar: null, // No app bar
      body: Stack(
        children: [
          Image.asset(
            'images/background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: isTablet ? screenSize.width * 0.2 : 20.0,
                vertical: isTablet ? screenSize.height * 0.1 : 40.0,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isTablet ? 30 : 40,
                          fontFamily: "Impact",
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: isTablet ? 20 : 10),
                    TextFormField(
                      controller: _fullNameController,
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
                    SizedBox(height: isTablet ? 30 : 20),
                    TextFormField(
                      controller: _emailController,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isTablet ? 20 : 16,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email Address',
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
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: isTablet ? 30 : 20),
                    ElevatedButton(
                      onPressed: _showDatePicker,
                      child: const Text('Select Date of Birth'),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Selected Date of Birth: ${selectedDate?.toString().split(' ')[0] ?? "None"}',
                    ),
                    SizedBox(height: isTablet ? 30 : 20),
                    TextFormField(
                      controller: _passwordController,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isTablet ? 20 : 16,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
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
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: isTablet ? 30 : 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _submitForm,
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
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: "Impact",
                              color: Colors.black,
                              fontSize: isTablet ? 20 : 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: isTablet ? 10 : 5),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          'If you have signed up, register here',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? 18 : 16,
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
    );
  }
}
