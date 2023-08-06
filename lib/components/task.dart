import 'package:flutter/material.dart';
import 'package:listinha_de_tarefas/components/difficulty.dart';

class Task extends StatefulWidget {
  final String taskTitle;
  final String img;
  final int dificuldade;

  const Task(this.taskTitle, this.img, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  int cor = 0;
  List cores = [
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.green,
    Colors.purple,
    Colors.brown,
    Colors.black
  ];

  @override
  Widget build(BuildContext context) {
    int dificuldade = widget.dificuldade;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: cores[cor],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(66, 100, 100, 100),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            widget.img,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            widget.taskTitle,
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Difficulty(
                          difficultyLevel: dificuldade,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                                if ((nivel / widget.dificuldade) / 10 == 1) {
                                  if (cor < 6) {
                                    nivel = 0;
                                    cor++;
                                  }
                                }
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.arrow_drop_up),
                                Text(
                                  "UP",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      //color: Colors.red,
                      width: 190,
                      child: LinearProgressIndicator(
                        value:
                            (dificuldade > 0) ? (nivel / dificuldade) / 10 : 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nivel: $nivel",
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
