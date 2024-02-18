import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
              ),
              Text('  Person', style: TextStyle(color: Colors.white)),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print('Clicked');
                },
                icon: Icon(
                  Icons.videocam,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  print('Clicked');
                },
                icon: Icon(
                  Icons.call,
                  color: Colors.white,
                )),
            IconButton(
              onPressed: () {
                print('Clicked');
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
            )
          ],
        ),
        body: Stack(children: [
          Image.asset('assets/images/background.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/person1.jpg'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(25),
                      border: Border.all(color: Colors.white38),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'This is My First Message',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(25),
                        border: Border.all(color: Colors.white38),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'This is My First Message',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/person2.jpg'),
                      ),
                    ),
                  ],
                )),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      prefixIcon: Icon(Icons.tag_faces, color: Colors.white),
                      hintText: 'Type a Message',
                      hintStyle: TextStyle(color: Colors.white38),
                      suffixIcon: Icon(Icons.attach_file, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(), shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mic_none,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ]),
        ]),
      ),
    );
  }
}
