import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_workout_app/screens/authenticate/auth.dart';
import 'package:home_workout_app/screens/home/exercise.dart';
import 'package:home_workout_app/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      value: AuthService().userStream,
      initialData: null,
      child: MaterialApp(
        home: Exercise(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
