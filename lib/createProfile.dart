import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class CreateProfile extends StatefulWidget {
  CreateProfile();

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  String name = '';
  String surname = '';


  @override
  Widget build(BuildContext context) {
    bool canLogin = name.isNotEmpty && surname.isNotEmpty;

    return Scaffold(
      backgroundColor: ui.color.white,
      body:  Padding(
          padding: const EdgeInsets.all(10.0),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Создание Профиля", style: ui.font.title1ExtraBold),
              SizedBox(height: 44),
              Text("Без профиля вы не сможете создавать проекты.", style: ui.font.captionRegular,selectionColor: ui.color.place_holder),
              SizedBox(height: 8),
              Text("В профиле будут храниться результаты проектов и ваши описания.", style: ui.font.captionRegular,selectionColor: ui.color.place_holder),

              TextField(
                onChanged: (value) => setState(() => name = value),
                decoration: const InputDecoration(
                  labelText: 'Имя',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),


              TextField(
                onChanged: (value) => setState(() => surname = value),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Отчество',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),


              if (canLogin)
                ui.bigbuttons.primary(text: "Далее",enabled: true, onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateProfile()),);})

              else
                ui.bigbuttons.primary(text: "Далее",enabled: false,onPressed: (){}
                ),
            ],
          ),
        ),
      ),
    );
  }
}