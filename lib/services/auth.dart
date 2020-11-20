import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon
  Future signInAnon() async {
    try{
      AuthResult res = await _auth.signInAnonymously();
      FirebaseUser user = res.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in normally

  // register with email and password

  // sign out
}