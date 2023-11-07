import 'package:flutter/material.dart';
import 'package:testmobx/app/modules/home/controller/home_controller.dart';

import 'core/utils/theme.dart';
import 'modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      routes: {
        // "/": (context) => LoginPage(homeController: LoginController()),
        "/": (context) => HomePage(
              homeController: HomeController(),
            ),
      },
    );
  }
}
