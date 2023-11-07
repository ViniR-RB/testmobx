import 'package:flutter/material.dart';
import 'package:testmobx/app/modules/login/controller/login_controller.dart';
import 'package:testmobx/app/modules/login/login_page.dart';

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
        "/": (context) => LoginPage(homeController: LoginController()),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
