import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'HexColor.dart';


class GlobalClass {

 static  DateTime selectedDate = DateTime.now();

  static Future<String> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1800),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate){
      return DateFormat('dd-MM-yyy').format(picked);
    }
  }


 static showAlertDialog(BuildContext context,String title,String Message) {

   // set up th e button
   Widget okButton = FlatButton(
     child: Text("OK"),
     onPressed: () {
     Get.back();
     },
   );

   // set up the AlertDialog
   AlertDialog alert = AlertDialog(
     title: Text(title),
     content: Text(Message),
     actions: [
       okButton,
     ],
   );

   // show the dialog
   showDialog(
     context: context,
     builder: (BuildContext context) {
       return alert;
     },
   );
 }



 static mDropDown(String label,List<String> mDestinations, RxString mController) {
   return Obx(() {
     return  DropdownButtonFormField<String>(
         decoration: InputDecoration(
           labelStyle: TextStyle(color: Colors.black54),
           fillColor: HexColor("#f5f7fa"),
           filled: true,
           labelText: label,


           border: new OutlineInputBorder(
             borderRadius: const BorderRadius.all(
               const Radius.circular(10.0),
             ),
             borderSide: BorderSide(
               color: Colors.transparent,
             ),
           ),
           focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10.0),
             borderSide: BorderSide(
               color: Colors.transparent,
             ),
           ),
           enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10.0),
             borderSide: BorderSide(
               color: Colors.transparent,
             ),
           ),
         ),
         value: mController.value,
         onChanged: (value) {
           mController.value = value;
         },
         isExpanded: true,
         items: mDestinations.map((String value) {
           return DropdownMenuItem<String>(
             value: value,
             child: Text(value),
           );
         }).toList(),
       );
   });
 }


}