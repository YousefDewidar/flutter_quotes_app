// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/card_model.dart';

class OneCard extends StatelessWidget {
  const OneCard({
    super.key,
    required this.q,
    required this.deleteCard,
    required this.index,
  });
  final Quote q;
  final Function deleteCard;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: const Color.fromARGB(255, 21, 79, 95),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              textDirection: TextDirection.rtl,
              q.quote,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 238, 238, 238),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      deleteCard(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 221, 71, 60),
                    )),
                Text(
                  q.author,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 238, 238, 238),
                  ),
                ),
              
              
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
