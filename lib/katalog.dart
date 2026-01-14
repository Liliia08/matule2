import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Katalog extends StatefulWidget {
  Katalog();

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(top: 72, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              ui.search,
              const SizedBox(height: 32),
                SizedBox(
                  height: 40, // Фиксированная высота для меню
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
                const SizedBox(height: 20),]))

    );
  }
}
