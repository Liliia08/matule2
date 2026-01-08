import 'package:flutter/material.dart';
import 'package:matule/createPassword.dart';
import 'package:uikit/uikit.dart';

class CreateProfile extends StatefulWidget {
  CreateProfile();

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String name = '';
  String surname = '';
  String fathername = '';
  String data = '';
  String gender = '';
  String email = '';

  bool get isValidEmail {
    final pattern = RegExp(r'^[a-z0-9]+@[a-z0-9]+\.[a-z]{2,}$');
    return pattern.hasMatch(email);
  }

  bool get hasEmailError => email.isNotEmpty && !isValidEmail;

  @override
  Widget build(BuildContext context) {
    bool canLogin =
        name.isNotEmpty &&
        surname.isNotEmpty &&
        fathername.isNotEmpty &&
        data.isNotEmpty &&
        gender.isNotEmpty &&
        email.isNotEmpty && isValidEmail;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 76, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Создание Профиля", style: TextStyle(fontSize: 24, fontFamily: 'SF Pro Display', fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 44),
            Text(
              "Без профиля вы не сможете создавать проекты.",
              style: ui.font.captionRegular.copyWith(fontFamily:'SF Pro Display', color: Color(0xFF939396)),
            ),
            SizedBox(height: 8),
            Text(
              "В профиле будут храниться результаты проектов и \nваши описания.",
              style: ui.font.captionRegular.copyWith(fontFamily:'SF Pro Display', color:  Color(0xFF939396)),
            ),
            SizedBox(height: 32),
            Center(child: Column(children: [
            Inputs(
              hint: "Имя",
              showValidationBorder: true,
              onChanged: (value) => setState(() => name = value),
            ),
            SizedBox(height: 24),
            Inputs(
              hint: "Отчество",
              showValidationBorder: true,
              onChanged: (value) => setState(() => fathername = value),
            ),
            SizedBox(height: 24),
            Inputs(
              hint: "Фамилия",
              showValidationBorder: true,
              onChanged: (value) => setState(() => surname = value),
            ),
            SizedBox(height: 24),
            Inputs(
              hint: "Дата рождения",
              showValidationBorder: true,
              onChanged: (value) => setState(() => data = value),
            ),
            SizedBox(height: 24),
            Inputs(
              hint: "Пол",
              showValidationBorder: true,
              onChanged: (value) => setState(() => gender = value),
            ),
            SizedBox(height: 24),
            Inputs(
              hint: "Почта",
              showValidationBorder: true,
                onChanged: (value) => setState(() => email = value),
                hasError: hasEmailError,
                helperText: hasEmailError
                    ? "Email должен быть в формате name@domain.ru "
                    : null,
              ),


          SizedBox(height: 68),

            if (canLogin)
              ui.bigbuttons.primary(
                text: "Далее",
                enabled: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreatePassword()),
                  );
                },
              )
            else
              ui.bigbuttons.primary(
                text: "Далее",
                enabled: false,
                onPressed: () {},
              ),],),)
          ],
        ),
      ),
    );
  }
}
