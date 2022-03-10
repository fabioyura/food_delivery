import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 2.84; //3.84
  static double pageViewTextContainer = screenHeight / 6.03; //7.03

  //Dynamic HEIGHT padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.7;

  //Dynamic WIDHT padding and margin
  static double widht10 = screenHeight / 84.4;
  static double widht15 = screenHeight / 56.27;
  static double widht20 = screenHeight / 42.2;
  static double widht30 = screenHeight / 28.13;
  static double widht45 = screenHeight / 18.7;

  //Font

  static double font20 = screenHeight / 32.2;

  //Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //Icon size
  static double iconSize24 = screenHeight / 25.17;

  //ListView size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;
}
