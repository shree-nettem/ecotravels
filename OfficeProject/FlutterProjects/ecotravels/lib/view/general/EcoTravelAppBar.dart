

import 'package:ecotravels/helper/HexColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcoTravelAppBAr {

  static Widget appBar(String title, String ImgUrl) {
    return SliverAppBar(
      backgroundColor: Colors.white10,
      expandedHeight: 200,
      pinned: true,
      leading: Center(
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.white,
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_outlined,
                size: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
centerTitle: true,
        title: Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white
        ),),
        background: Image(
          image: NetworkImage(
              'https://www.metimeaway.com/wp-content/uploads/2019/11/sustainable-travel.jpg'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
