import 'package:get/get.dart';
import 'package:my_weather_app/ViewModel/Controllers/home_controller.dart';

class SplashServices{
  static void getApiData(){
    final homeController = Get.put(HomeController());
    homeController.getData();

  }
}