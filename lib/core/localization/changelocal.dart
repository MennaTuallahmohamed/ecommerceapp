import 'package:ecommerceapp/core/constant/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/services.dart';



class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.changeTheme(langcode == "ar" ? themeArabic : themeEnglish);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      Get.changeTheme(themeArabic);
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      Get.changeTheme(themeEnglish);
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      Get.changeTheme(themeEnglish);
    }
    super.onInit();
  }
}