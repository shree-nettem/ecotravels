import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeControler extends GetxController{




  var mDestinations = ['Destination','Africa Adventure','Africa Wild','America','Asia','Scandinavia','Western Europe'];

  var mDestinationsController = 'Destination'.obs;


  var mDuration = ['Duration','1 Day Tour','2-4 Days Tour','5-7 Days Tour','7+ Days Tour'];

  var mDurationController = 'Duration'.obs;


  @override
  void onInit() {
    super.onInit();

  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    super.dispose();
  }






}