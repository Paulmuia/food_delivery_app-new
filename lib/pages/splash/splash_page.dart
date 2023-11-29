import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/routes/route_helper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../products/popular_product_controller.dart';
import '../../products/recommended_product_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with TickerProviderStateMixin{
  late Animation<double>animation;
  late AnimationController controller;
  Future<void>_loadResource() async {
    await Get.find<PopularProductController>().getPopularProductList();
    await Get.find<RecommendedProductController>().getRecommendedProductList();
  }

  @override
  void initState(){
    super.initState();
    _loadResource();
    controller =  AnimationController(
        vsync: this,
        duration:const  Duration(seconds: 4))..forward();

    animation= CurvedAnimation(
        parent: controller, 
        curve: Curves.linear);
    Timer(
      const Duration(seconds: 3),
        ()=>Get.offNamed(RouteHelper.getInitial())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(scale: animation,
          child: Center(child: Image.asset('lib/assets/logo part 1.png',width: 250,))),
          Center(child: Image.asset('lib/assets/logo part 2.png',width: 250,))
        ],
      ),
    );
  }
}
