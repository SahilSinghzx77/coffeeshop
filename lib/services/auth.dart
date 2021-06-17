// @dart=2.9

import 'package:coffeeshop/models/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // final GoogleSignIn _googleUser=GoogleSignIn();

  //google sign in
  // Future googleSignIn() async{
  //   try{
  //     GoogleSignInAccount _googleAuth=await _googleUser.signIn();
  //     GoogleSignInAuthentication authenticationUser = await _googleAuth.authentication;
  //     OAuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: authenticationUser.accessToken,
  //       idToken: authenticationUser.idToken,
  //     );
  //     UserCredential  result= await _auth.signInWithCredential(credential);
  //     User user=result.user;
  //     return _userFromFireBaseUser(user);
  //   }catch(e){
  //     print(e.toString());
  //     return null;
  //   }
  // }

  //create user obj based on FirebaseUser
  MyUser _userFromFireBaseUser(User user){
    return user != null ? MyUser(uid: user.uid) : null;
  }


  //auth change user stream
  Stream<MyUser> get stuser{
    return _auth.authStateChanges()
        .map(_userFromFireBaseUser);
  }


  //sign in anon
  Future signInAnon() async{
    try{
      UserCredential result=await _auth.signInAnonymously();
      User user=result.user;
      return _userFromFireBaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFireBaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
  //register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFireBaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}