// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/card_model.dart';
import 'package:flutter_application_2/widget/FloatingButtonContainer.dart';
import 'package:flutter_application_2/widget/one_card.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List allQuotes = [
    Quote(author: 'أوليفر وندل هولمز', quote: 'لا يتوقف الناس عن اللعب لأنهم كبروا، بل يكبرون لأنهم توقفوا عن اللعب '),
    Quote(author: 'آبراهام لينكولن', quote: 'لا يضيع شيء ذو قيمة إذا صرفنا الوقت الكافي في إتقانه'),
  ];

  deleteCard(int index) {
    allQuotes.removeAt(index);
    setState(() {});
  }

  addCard() {
    allQuotes.add(Quote(author: myController2.text, quote: myController.text));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButtonContainer(
        addCard: addCard,
      ),
      appBar: AppBar(
        title: const Text(
          'Awesome Quotes',
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 79, 95),
      ),
      body: ListView.builder(
        itemCount: allQuotes.length,
        itemBuilder: (context, index) {
          return OneCard(
            deleteCard: deleteCard,
            q: allQuotes[index],
            index: index,
          );
        },
      ),
    );
  }
}
