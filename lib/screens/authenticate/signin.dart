import 'package:flutter/material.dart';
import 'package:home_workout_app/screens/authenticate/authenticate.dart';
import 'package:home_workout_app/screens/home/homepage.dart';
import './auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({super.key, required this.toggleView});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = AuthService();
  String email = '';
  String password = '';
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter email address!";
                  }
                },
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter password!";
                  }
                },
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    if (_formKey.currentState!.validate()) {
                      var result =
                          await _auth.signInEmailPassword(email, password);
                      print("invalid ${result}");
                      if (result == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                const Text('Enter correct Email and Password'),
                            backgroundColor: Colors.blue,
                            behavior: SnackBarBehavior.floating,
                            action: SnackBarAction(
                              label: '',
                              onPressed: () {},
                            ),
                          ),
                        );
                      }
                    }
                  } catch (e) {
                    print(e.toString());
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Incorrect Email or Password'),
                        backgroundColor: Colors.blue,
                        behavior: SnackBarBehavior.floating,
                        action: SnackBarAction(
                          label: '',
                          onPressed: () {},
                        ),
                      ),
                    );
                  }
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
