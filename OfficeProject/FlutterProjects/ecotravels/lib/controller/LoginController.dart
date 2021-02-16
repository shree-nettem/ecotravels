import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var mObscureIcon = false.obs;

  var mCheckBoxIcon = false.obs;



  TextEditingController mCrtAccEmail;
  TextEditingController mCrtAccPassword;


  TextEditingController mSetPassword;
  TextEditingController mSetCfmPassword;


  TextEditingController mLoginEmail;
  TextEditingController mLoginPassword;



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    mCrtAccEmail= TextEditingController();
    mCrtAccPassword= TextEditingController();



    mSetPassword= TextEditingController();
    mSetCfmPassword= TextEditingController();


    mLoginEmail= TextEditingController();
    mLoginPassword= TextEditingController();




  }


 void setObscureIcon(){
   mObscureIcon = mObscureIcon.toggle()  ;

 }

 void setCheckBox()
 {
   mCheckBoxIcon.value=mCheckBoxIcon.value?false:true;
 }


}