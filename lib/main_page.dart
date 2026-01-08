import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Добавил для прокрутки
        child: Padding(
          padding: const EdgeInsets.only(top: 68, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ui.search,
              const SizedBox(height: 32),
              Text(
                "Акции и новости",
                style: ui.font.title3Semibold.copyWith(color: const Color(0xFF939396)),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 270,
                    height: 152,
                    child: Image.asset("assets/images/covid.png"),
                  ),
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
              SizedBox(
                height: 40,  // Фиксированная высота для меню
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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
                ),
              ),
              const SizedBox(height: 25),
              ui.productCard.card(
                title: 'Рубашка Воскресенье для машинного\nвязания',
                subtitle: 'Мужская одежда',
                price: '300',
                button: ui.smallbuttons.primary(
                  text: "Добавить",
                  enabled: true,
                  onPressed: (){},
                ),
              ),
              const SizedBox(height: 10),
              ui.productCard.card(
                title: 'Рубашка Воскресенье для машинного\nвязания',
                subtitle: 'Мужская одежда',
                price: '300',
                button: ui.smallbuttons.Delete(
                  text: "Убрать",
                  onPressed: (){},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}