import 'package:flutter/material.dart';
import 'package:matule/main_page.dart';
import 'package:uikit/uikit.dart';


class Cartt extends StatelessWidget {
  const Cartt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Корзина'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Товары в корзине
            ui.productCard.cartItem(
                title: 'Рубашка воскресенье для машинного вязания',
                price: '300 ₽',
                onRemove: (){}
            ),
            Divider(),
            ui.productCard.cartItem(
                title: 'Шорты вторник для машинного вязания',
                price: '300 ₽',
                onRemove: (){}
            ),
            Divider(),
            SizedBox(height: 20),

            // Сумма
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Сумма', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('2490 ₽', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),

            Spacer(),

            // Кнопка оформления заказа
            ui.bigbuttons.primary(
              text: 'Перейти к оформлению заказа',
              onPressed: () {
                // 1. Показываем уведомление
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('✅ Заказ успешно оформлен!'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 3),
                  ),
                );

                // 2. Переходим на страницу логина через 1 секунду
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}