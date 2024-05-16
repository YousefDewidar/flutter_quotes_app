import 'package:flutter/material.dart';

final myController = TextEditingController();
final myController2 = TextEditingController();

class FloatingButtonContainer extends StatelessWidget {
  const FloatingButtonContainer({super.key, required this.addCard});

  final Function addCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 59, 49),
          borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        icon: const Icon(
          Icons.add,
          size: 30,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                insetAnimationDuration: const Duration(milliseconds: 400),
                child: Container(
                  height: 300,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: myController,
                        maxLength: 200,
                        decoration: const InputDecoration(
                          hintText: "Add new quote",
                        ),
                      ),
                      TextField(
                        controller: myController2,
                        maxLength: 12,
                        decoration:
                            const InputDecoration(hintText: "Add author"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (myController.text != '') {
                            addCard();
                          }
                          Navigator.pop(
                            context,
                          );
                        },
                        style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 21, 79, 95),
                          ),
                        ),
                        child: const Text('Add'),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
