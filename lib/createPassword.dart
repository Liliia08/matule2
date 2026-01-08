import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'protect.dart';


class CreatePassword extends StatefulWidget {
  CreatePassword();

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  String pass = '';
  String pass2 = '';

  bool get isStrongPassword {
    if (pass.length < 8) return false;
    if (!pass.contains(RegExp(r'[A-Z]'))) return false;
    if (!pass.contains(RegExp(r'[a-z]'))) return false;
    if (!pass.contains(RegExp(r'[0-9]'))) return false;
    if (!pass.contains(RegExp(r'[!@#$%^&*(),.?":{}|<> ]'))) return false;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    bool match =
        pass.isNotEmpty &&
        pass2.isNotEmpty &&
        pass == pass2 &&
        isStrongPassword;
    ;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 103, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "✋ Создание пароля",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'SF Pro Display',
                color: ui.color.black,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 23),
            Text("  Введите новый пароль", style: ui.font.textRegular),
            SizedBox(height: 90),
            Center(
              child: Column(
                children: [
                  Inputs(
                    label: "Новый Пароль",
                    isPassword: true,
                    onChanged: (value) => setState(() => pass = value),
                    hasError: pass.isNotEmpty && !isStrongPassword,
                    helperText: pass.isNotEmpty && !isStrongPassword
                        ? 'Пароль не соответствует требованиям'
                        : null,
                  ),
                  SizedBox(height: 12),
                  Inputs(
                    label: "Повторите пароль",
                    isPassword: true,
                    onChanged: (value) => setState(() => pass2 = value),
                    hasError: pass2.isNotEmpty && pass != pass2,
                    helperText: pass2.isNotEmpty && pass != pass2
                        ? 'Пароли не совпадают'
                        : null,
                  ),
                  SizedBox(height: 12),

                  if (match)
                    ui.bigbuttons.primary(
                      text: "Сохранить",
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
                      text: "Сохранить",
                      enabled: false,
                      onPressed: () {},
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
