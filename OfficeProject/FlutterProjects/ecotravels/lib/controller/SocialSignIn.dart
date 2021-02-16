
import 'dart:convert';

import 'package:ecotravels/controller/LoginController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';


class SocialSignIn extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  LoginController loginController = Get.find();
  FirebaseUser _user;
  final facebookLogin = FacebookLogin();

  Future<FirebaseUser> signInWithGoogle() async {

    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
    await googleSignInAccount.authentication;
    AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    AuthResult authResult = await _auth.signInWithCredential(credential);
    _user = authResult.user;
    assert(!_user.isAnonymous);
    assert(await _user.getIdToken() != null);
    FirebaseUser currentUser = await _auth.currentUser();
    assert(_user.uid == currentUser.uid);

    loginController.mCrtAccEmail.text = _user.email;


  }


  Future signInFB() async {
    final FacebookLoginResult result = await facebookLogin.logIn(["email"]);
    print(result.errorMessage);
    final String token = result.accessToken.token;
    final response = await  http.get('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    final profile = jsonDecode(response.body);
    print(profile);
    return profile;
  }

}

