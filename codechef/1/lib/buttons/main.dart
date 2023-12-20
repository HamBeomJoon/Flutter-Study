import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              onLongPress: () {
                print('text button long press');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                //backgroundColor: Colors.blue
              ),
              child: const Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('Outlined button');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                // side: BorderSide(
                //   color: Colors.black87,
                //   width: 2.0
                // )
              ),
              child: const Text('Outlined button'),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon button');
              },
              icon: const Icon(
                Icons.home,
                size: 30.0,
                //color: Colors.black87,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('Go to Home');
              },
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              label: const Text('Go to Home'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: const Size(200, 50)),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print('Outlined icon button');
              },
              icon: const Icon(Icons.home),
              label: const Text('Go to home'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              label: const Text('Go to Home'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  disabledForegroundColor: Colors.pink.withOpacity(0.38), // 비활성 버튼색 설정
                  disabledBackgroundColor: Colors.pink.withOpacity(0.12)
                  //minimumSize: Size(200, 50), 버튼의 최소 크기 설정
                  ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: const EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("TextButton"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("ElevatedButton"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
