import 'package:flutter/material.dart';
import 'package:listinha_de_tarefas/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Tarefas"),
      ),
      body: AnimatedOpacity(
        opacity: (opacidade == true) ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: Container(
          color: const Color.fromARGB(255, 197, 197, 197),
          child: ListView(
            children: const [
              Task("Aprender Flutter", "assets/images/flutter_logo.png", 3),
              Task("Andar de Bike", "assets/images/bike.jpg", 2),
              Task("Leitura", "assets/images/read.jpg", 3),
              Task("Meditação", "assets/images/meditando.jpeg", 4),
              Task("Aprofundando em Fluter",
                  "assets/images/flutter_mascote.png", 4),
              Task("Jogar Video Game", "assets/images/videogame.jpeg", 2),
              SizedBox(
                height: 76,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
