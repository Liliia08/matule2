import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'createProfile.dart';
import 'protect.dart';
import 'cart.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  bool get isValidEmail {
    final pattern = RegExp(r'^[a-z0-9]+@[a-z0-9]+\.[a-z]{2,}$');
    return pattern.hasMatch(email);
  }

  bool get hasEmailError => email.isNotEmpty && !isValidEmail;

  @override
  Widget build(BuildContext context) {
    // Можно войти только если email и пароль не пустые И email корректен
    bool canLogin = email.isNotEmpty && password.isNotEmpty && isValidEmail;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 103, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "  ✋ Добро пожаловать!",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'SF Pro Display',
                color: ui.color.black,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Войдите, чтобы пользоваться функциями \nприложения"),
            ),

            SizedBox(height: 64),
            Center(
              child: Column(
                children: [
                  Inputs(
                    label: "Вход по E-mail",
                    hint: "example@mail.com",
                    onChanged: (value) => setState(() => email = value),
                    hasError: hasEmailError,
                    helperText: hasEmailError
                        ? "Email должен быть в формате name@domain.ru "
                        : null,
                  ),
                  SizedBox(height: 14),
                  Inputs(
                    label: "Пароль",
                    isPassword: password.isNotEmpty,
                    onChanged: (value) => setState(() => password = value),
                  ),

                  const SizedBox(height: 14),

                  if (canLogin)
                    ui.bigbuttons.primary(
                      text: "Далее",
                      enabled: true,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Protect(),
                          ),
                        );
                      },
                    )
                  else
                    ui.bigbuttons.primary(
                      text: "Далее",
                      enabled: false,
                      onPressed: () {},
                    ),
                  SizedBox(height: 15),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cartt(),
                        ),
                      );
                    },
                    child: Text(
                      'Зарегистрироваться',
                      style: ui.font.textRegular.copyWith(
                        color: ui.color.accent,
                      ),
                    ),
                  ),
                  SizedBox(height: 59),
                  Text(
                    "Или войдите с помощью",
                    style: ui.font.textRegular.copyWith(
                      color: Color(0xFF939396),
                    ),
                  ),
                  SizedBox(height: 16),
                  ui.login.VK(onPressed: () {}),
                  SizedBox(height: 16),
                  ui.login.Yandex(onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
