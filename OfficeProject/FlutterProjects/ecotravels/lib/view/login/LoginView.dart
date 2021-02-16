import 'package:ecotravels/controller/SocialSignIn.dart';
import 'package:ecotravels/controller/LoginController.dart';
import 'package:ecotravels/helper/HexColor.dart';
import 'package:ecotravels/view/general/ContainerView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {


  LoginController loginController = Get.put(LoginController());

  SocialSignIn signin = Get.put(SocialSignIn());


  /* GoogleSignInController googleSignInController =
  Get.put(GoogleSignInController());*/
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "assets/images/login_img.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
            key: _formKey,
            child: Container(
                margin: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 65,
                    ),
                    Center(
                      child: Text(
                        'Find next place to visit',
                        style: TextStyle(
                            color: HexColor('#1d1d21'),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        'Discover amazing places at exclusive deals',
                        style: TextStyle(
                          color: HexColor('#8693a1'),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        'Email ID/Mobile Number',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(
                        controller: loginController.mCrtAccEmail,
                        maxLines: 1,
                        validator: (email) {
                          if (email.trim().isEmpty) {
                            return "Email field is required";
                          } else if (!email.isEmail) {
                            return "Please enter a valid email";
                          }
                        },
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.black54),
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Obx(() {
                        return Container(
                          height: 50,
                          child: TextFormField(
                            controller: loginController.mCrtAccPassword,
                            textDirection: TextDirection.ltr,
                            obscureText: loginController.mObscureIcon.value,
                            validator: (Zipcode) => Zipcode.isEmpty
                                ? "Password field is required"
                                : null,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.black54),
                              fillColor: Colors.grey[100],
                              filled: true,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Obx(() {
                                  return IconButton(
                                      color: Colors.grey,
                                      onPressed: () {
                                        loginController.setObscureIcon();
                                      },
                                      icon: Icon(
                                          loginController.mObscureIcon.value
                                              ? Icons.remove_red_eye
                                              : Icons.remove_red_eye_outlined));
                                }),
                              ),
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.grey[800],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(() {
                          return FlatButton.icon(
                              onPressed: () {
                                loginController.setCheckBox();
                              },
                              icon: Icon(
                                loginController.mCheckBoxIcon.value
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: HexColor('#ff753f'),
                              ),
                              label: Text(
                                'Remember me',
                                style: TextStyle(color: HexColor('#8693a1')),
                              ));
                        }),
                        new Text(
                          "Forgot Password?",
                          style: TextStyle(color: HexColor("#ff5715")),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: RaisedButton(
                          color: HexColor("#ff753f"),
                          textColor: HexColor("#FFFFFF"),
                          child: Text('Log in'),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Get.to(ContainerView());
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: RichText(
                        text: new TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: new TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            new TextSpan(text: 'Don’t have an account?',
                            style: TextStyle(
                              color: Colors.white
                            )),
                            new TextSpan(
                                text: ' Register now!',
                                style: new TextStyle(
                                    color: HexColor('#ff5715'),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Continue with Google",
                      onPressed: () {
                        signin.signInWithGoogle();
                        // googleSignInController.googleLogin();
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      text: "Continue with Facebook",
                      onPressed: () {
                        print('clicked');
                        signin.signInFB();
                      },
                    ),
                  ],
                ))),
      ),
    ]);
  }
}
