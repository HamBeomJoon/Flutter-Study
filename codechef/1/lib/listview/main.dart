import 'package:codechef/listview/animal_page.dart';
import 'package:codechef/listview/model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = ['Bear', 'Camel', 'Deer', 'Fox', 'Kangaroo', 'Koala', 'Lion', 'Tiger'];

  static List<String> animalImagePath = [
    'image/bear.png',
    'image/camel.png',
    'image/deer.png',
    'image/fox.png',
    'image/kangaroo.png',
    'image/koala.png',
    'image/lion.png',
    'image/tiger.png'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length, (index) => Animal(animalName[index], animalImagePath[index], animalLocation[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AnimalPage(
                      // aniamlPage에 animal이라는 변수로 animalData[index]가 전달됨
                      animal: animalData[index],
                    ),
                  ),
                );
                debugPrint(animalData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
