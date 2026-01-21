import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Katalog extends StatefulWidget {
  const Katalog({super.key});

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  // Состояния для кнопок
  bool _isShirtAdded = false;
  bool _isShortsAdded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 72, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 265,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFEBEBEB), width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFF5F5F9),
                          ),
                          padding: EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/img_2.png',
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(width: 8,),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Искать описания",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 38),
                        Image.asset(
                          'assets/images/img_3.png',
                          height: 32,
                          width: 32,
                        ),
                      ],
                    ),
                    SizedBox(height: 32,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Menu(text: "Все", isActive: true),
                          SizedBox(width: 16),
                          Menu(text: "Женщинам"),
                          SizedBox(width: 16),
                          Menu(text: "Мужчинам"),
                          SizedBox(width: 16),
                          Menu(text: "Детям"),
                          SizedBox(width: 16),
                          Menu(text: "Аксессуары"),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    // Карточка 1 - Рубашка
                    Container(
                      width: double.infinity,
                      child: ui.productCard.card(
                        title: "Рубашка Воскресенье для машинного \nвязания",
                        subtitle: "Мужская одежда",
                        price: "300",
                        button: _isShirtAdded
                            ? ui.smallbuttons.Delete(text: "Убрать", onPressed: (){
                          setState(() {
                            _isShirtAdded = false;
                          });
                        })
                            : ui.smallbuttons.primary(text: "Добавить", onPressed: (){
                          setState(() {
                            _isShirtAdded = true;
                          });
                        }),
                      ),
                    ),

                    SizedBox(height: 12,),

                    // Карточка 2 - Шорты
                    Container(
                      width: double.infinity,
                      child: ui.productCard.card(
                        title: "Шорты вторник для машинного \nвязания",
                        subtitle: "Мужская одежда",
                        price: "300",
                        button: _isShortsAdded
                            ? ui.smallbuttons.Delete(text: "Убрать", onPressed: (){
                          setState(() {
                            _isShortsAdded = false;
                          });
                        })
                            : ui.smallbuttons.primary(text: "Давай", onPressed: (){
                          setState(() {
                            _isShortsAdded = true;
                          });
                        }),
                      ),
                    ),

                    // Отступ 100px для кнопки корзины
                    SizedBox(height: 175,),

                    // Кнопка корзины (показывается если есть добавленные товары)
                    if (_isShirtAdded || _isShortsAdded)
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: ui.cart.cart(
                          onPressed: () {
                            // Переход в корзину
                          },
                        ),
                      ),

                    // Дополнительный отступ снизу
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}