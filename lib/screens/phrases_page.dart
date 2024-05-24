import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

import '../components/phrase_item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'chich',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Ni',
      enName: 'dont forget to subscribe',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'San',
      enName: 'how are you feeling',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'Shi',
      enName: 'i love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'Go',
      enName: 'i love programming',
    ),
    ItemModel(
      sound:  'sounds/phrases/programming_is_easy.wav',
      jpName: 'Roku',
      enName: 'programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'Sebun',
      enName: 'what is your name?',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'hachi',
      enName: 'where are you going?',

    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'Kyū',
      enName: 'yes im coming',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 28,color: Colors.black),),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: const Color(0xff50ADC7),
              item: phrasesList[index],
            );
          },
        ),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(
  //       ListItem(
  //         number: numbers[i],
  //       ),
  //     );
  //   }

  //   return itemsList;
  // }
}
