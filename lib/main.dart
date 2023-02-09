import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // list containing URL links of images that will directly access from internet
  List RandomImages = [
    'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //creating appbar
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          centerTitle: true,
        ),
        // Using circle avatar to create overlap images
        body: Center(
            child: Container(
          //parent row
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < RandomImages.length; i++)
                    Align(
                      widthFactor: 0.5,
                      //parent circle avatar. We defined this for better UI
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        // Child circle avatar
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(RandomImages[i]),
                        ),
                      ),
                    )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              // this circle avatar we created add icon
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 50,
                child: Icon(Icons.add),
              )
            ],
          ),
        )));
  }
}
