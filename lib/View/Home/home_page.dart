import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_weather_app/Resources/Colors/colors.dart';
import 'package:my_weather_app/View/Home/Componants/app_bar.dart';
import 'package:my_weather_app/View/Home/Componants/info_cart.dart';
import 'package:my_weather_app/View/Home/Componants/location.dart';
import 'package:my_weather_app/ViewModel/Controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomAppBar(),
                const SizedBox(
                  height: 20,
                ),
                Location(),
                Hero(tag: "TAG", child: Material(  
                  color: Colors.transparent,
                  child: InfoCart(),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
