import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 띠 없애기
      home: StorePage(),
      initialRoute: "/main",
      routes: {
        "/main": (context) => StorePage(),
        "/next": (context) => NextPage(),
      },
    );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0), // 모든 영역에 여백을 주겠음
              child: Row(
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NextPage()));
                    },
                    child: const Text(
                      "iPhone",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "iPad",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Mac",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Acc",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/img_sample.jpg",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/img_sample_max.jpeg",
            ) // 이름있는 생성자
          ],
        ),
      ),
    );
  }
}
