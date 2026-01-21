import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 68, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F9),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFEBEBEB), width: 1),
                ),
                padding: EdgeInsets.all(14),
                child: Row(
                  children: [
                    Image.asset('assets/images/img_1.png', height: 20, width: 20,),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Искать описание',
                          hintStyle: ui.font.headlineRegular.copyWith(color: Color(0xFF939396)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Text(
                "Акции и новости",
                style: ui.font.title3Semibold.copyWith(color: const Color(0xFF939396)),
              ),
              const SizedBox(height: 16),
              Row(
                children: [

                     Image.asset("assets/images/covid.png"),

                  const SizedBox(width: 16),
                  Image.asset("assets/images/img.png"),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "Каталог описаний",
                style: ui.font.title3Semibold.copyWith(
                  color: const Color(0xFF939396),
                ),
              ),
              const SizedBox(height: 15),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Menu(text: 'Все', isActive: true),
                  const SizedBox(width: 16),
                  Menu(text: 'Женщинам'),
                  const SizedBox(width: 16),
                  Menu(text: 'Мужчинам'),
                  const SizedBox(width: 16),
                  Menu(text: 'Детям'),
                  const SizedBox(width: 16),
                  Menu(text: 'Аксессуары'),
                ],
                ),),

              const SizedBox(height: 25),

              // Карточка 1 - обернул в Container с ограничением ширины
              Container(
                width: double.infinity, // Займет всю доступную ширину внутри Padding
                child: ui.productCard.card(
                    title: "Рубашка Воскресенье для машинного вязания",
                    subtitle: "Мужская одежда",
                    price: "300",
                    button: ui.smallbuttons.primary(
                        text: "Добавить",
                        onPressed: (){}
                    )
                ),
              ),

              const SizedBox(height: 10),

              // Карточка 2
              Container(
                width: double.infinity,
                child: ui.productCard.card(
                    title: "Рубашка Воскресенье для машинного вязания",
                    subtitle: "Мужская одежда",
                    price: "300",
                    button: ui.smallbuttons.Delete(
                        text: "Убрать",
                        onPressed: (){}
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}