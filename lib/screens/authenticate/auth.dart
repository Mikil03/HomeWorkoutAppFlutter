import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Stream<User?> get userStream {
    return _auth.authStateChanges();
  }

  // Sign in anonymously
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Register using email and password
  Future register(email, password) async {
    try {
      UserCredential r = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return r.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in using email and password
  Future signInEmailPassword(String email, String password) async {
    try {
      var r = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(r.user);
      return r.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
