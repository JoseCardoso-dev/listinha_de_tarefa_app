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
              Task(
                  "Aprender Flutter",
                  "https://cdn.iconscout.com/icon/free/png-256/free-flutter-3629369-3032362.png",
                  3),
              Task(
                  "Andar de Bike",
                  "https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg",
                  2),
              Task(
                  "Leitura",
                  "https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg",
                  3),
              Task(
                  "Meditação",
                  "https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg",
                  4),
              Task(
                  "Aprofundando em Fluter",
                  "https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                  4),
              Task(
                  "Jogar Video Game",
                  "https://www.napratica.org.br/wp-content/uploads/2017/07/destaque-videogame.jpeg",
                  2),
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
