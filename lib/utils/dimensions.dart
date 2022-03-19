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
  static double height45 = screenHeight / 15.7; //18.7

  //Dynamic WIDHT padding and margin
  static double widht10 = screenHeight / 84.4;
  static double widht15 = screenHeight / 56.27;
  static double widht20 = screenHeight / 42.2;
  static double widht30 = screenHeight / 28.13;
  static double widht45 = screenHeight / 18.7;

  //Font size

  static double font16 = screenHeight / 48.75;
  static double font20 = screenHeight / 32.2; //42.2
  static double font26 = screenHeight / 26.46; //32.46

  //Radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //Icon size
  static double iconSize16 = screenHeight / 42.75;
  static double iconSize24 = screenHeight / 25.17;

  //ListView size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //Popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  //Bottom Height
  static double bottomHeightBar = screenHeight * 0.17;
}
