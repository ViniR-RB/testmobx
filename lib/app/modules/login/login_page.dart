import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:testmobx/app/core/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/widgets/custom_text_field.dart';
import 'controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  final LoginController homeController;
  const LoginPage({super.key, required this.homeController});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: AppColors.scaffoldBackground),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Stack(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(
                        builder: (_) => CustomTextField(
                            onChanged:
                                widget.homeController.userModel.changeUserName,
                            erroText: widget.homeController.validateUserName(),
                            label: "Usuário ",
                            icon: Icons.people)),
                    const SizedBox(
                      height: 16,
                    ),
                    Observer(
                        builder: (_) => CustomTextField(
                              label: "Senha ",
                              icon: Icons.lock,
                              onChanged: widget
                                  .homeController.userModel.changePassword,
                              erroText:
                                  widget.homeController.validatePassword(),
                            )),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 150,
                      child: Observer(
                        builder: (_) => ElevatedButton(
                            onPressed: widget.homeController.isValid
                                ? () => Navigator.of(context)
                                    .popAndPushNamed("/home")
                                : null,
                            child: const Text(
                              "Entrar",
                            )),
                      ),
                    )
                  ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () =>
                      launchUrl(Uri.parse('https://www.google.com')),
                  child: const Text("Política de privacidade"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
