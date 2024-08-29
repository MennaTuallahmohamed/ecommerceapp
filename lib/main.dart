import 'package:ecommerceapp/routes.dart';
import 'package:ecommerceapp/test.dart';
import 'package:ecommerceapp/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constant/color.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices(); // تأكد من انتظار الخدمات لتكتمل
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // إنشاء وتحميل التحكم في اللغة
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      translations: MyTranslation(), // إعداد الترجمات
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language, // إعداد اللغة الافتراضية
      home: const Language(), // الشاشة الرئيسية
      getPages: routes, // قائمة المسارات باستخدام GetX
    );
  }
}