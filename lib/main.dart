// validated a sign up form
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Kindacode.com',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define a key to access the form
  final formKey = GlobalKey<FormState>();

  String userEmail = '';
  String userName = '';
  String password = '';
  String confirmPassword = '';
  String phone = '';

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {
    final bool isValid = formKey.currentState!.validate();
    if (isValid == true) {
      print("successful");
    } else {
      print("UnSuccessfull");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        alignment: Alignment.center,
        child: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        /// Eamil
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.email),
                            labelText: 'Email',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Check if the entered email has the right format
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                          onChanged: (value) => userEmail = value,
                        ),

                        /// username
                        TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.person), labelText: 'Username'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 4) {
                              return 'Username must be at least 4 characters in length';
                            }
                            // Return null if the entered username is valid
                            return null;
                          },
                          onChanged: (value) => userName = value,
                        ),

                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              icon: Icon(Icons.phone),
                              labelText: 'Phone No',
                              prefixText: '880 '),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length != 10) {
                              return 'phone no must be at least 11 characters in length';
                            }
                            return null;
                          },
                          onChanged: (String value) => phone = value,
                        ),

                        /// Password
                        TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.password),
                              labelText: 'Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          onChanged: (value) => password = value,
                        ),

                        /// Confirm Password
                        TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(Icons.password),
                              labelText: 'Confirm Password'),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'This field is required';
                            }

                            if (value != password) {
                              return 'Confimation password does not match the entered password';
                            }

                            return null;
                          },
                          onChanged: (value) => confirmPassword = value,
                        ),
                        const SizedBox(height: 20),
                        Container(
                            alignment: Alignment.centerRight,
                            child: OutlinedButton(
                                onPressed: _trySubmitForm,
                                child: const Text('Sign Up')))
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
