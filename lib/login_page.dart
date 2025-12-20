import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'createProfile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    bool canLogin = email.isNotEmpty && password.isNotEmpty;

    return Scaffold(
      backgroundColor: ui.color.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Добро пожаловать!", style: ui.font.title1ExtraBold),
               SizedBox(height: 23),
              Text("Войдите, чтобы пользоваться функциями приложения"),

               SizedBox(height: 40),

              TextField(
                onChanged: (value) => setState(() => email = value),
                decoration: const InputDecoration(
                  labelText: 'example@mail.ru',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),


              TextField(
                onChanged: (value) => setState(() => password = value),
                obscureText: true,
                decoration: const InputDecoration(

                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),


              if (canLogin)
                ui.bigbuttons.primary(text: "Далее",enabled: true, onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),);})

              else
                ui.bigbuttons.primary(text: "Далее",enabled: false,onPressed: (){}
                ),
              SizedBox(height: 15,),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateProfile()),);
                },
                child: Text(
                  'Зарегистрироваться',
                  style: ui.font.textRegular.copyWith(
                    color: ui.color.accent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}