import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_pet_app/routes/app_pages.dart';
import 'package:get_pet_app/routes/app_routes.dart';
import 'package:get_pet_app/themes/theme.dart';
import 'package:get_pet_app/themes/theme_service.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const SplashPage());
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      AnimatedSplashScreen(
          nextScreen: const MyApp(),
          duration: 2000,
          splash: Column(
            children: const [
              Icon(Icons.pets, size: 50,) ,
              SizedBox(
                width: 10,
              ),
              Text("Get Pet",style: TextStyle(fontSize: 20),)
            ],
          ),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white)
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.list,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
    );
  }
}
