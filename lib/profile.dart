import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';
import 'login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 76, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Эдуард",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'SF Pro Display',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "afersfsr@dsfsr.ru",
              style: ui.font.headlineRegular.copyWith(
                fontFamily: 'SF Pro Display',
                color: const Color(0xFF939396),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Text("📋", style: TextStyle(fontSize: 32)),
                const SizedBox(width: 20),
                Text("Мои заказы", style: ui.font.title3Semibold),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Text("⚙️", style: TextStyle(fontSize: 32)),
                const SizedBox(width: 20),
                Text("Уведомления", style: ui.font.title3Semibold),
                const SizedBox(width: 112),
                Toggle(
                  isActive: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(height: 192),
            Center(
              child: Column(
                children: [
                  Text(
                    "Политика конфиденциальности",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      color: const Color(0xFF939396),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Пользовательское соглашение",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF Pro Display',
                      color: const Color(0xFF939396),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Выход',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: ui.color.error,
                      ),
                    ),
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