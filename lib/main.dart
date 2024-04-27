import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: h * 0.500,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              height: h * 0.450,
                              decoration:const BoxDecoration(
                                color: Colors.yellow,
                                image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1252760807/photo/a-narrow-street-in-malasa%C3%B1a-district-in-madrid-spain.jpg?s=612x612&w=0&k=20&c=G24YKnVJzNUbHeDgTuA_UwX4lJ6d42uZwarcHyF52n8="), fit: BoxFit.cover)
                              ),
                            )
                          ),

                          const Positioned(
                            bottom:0,
                            right: 24,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage("https://preview.redd.it/created-random-people-using-chatgpt-midjourney-do-you-know-v0-q1aa450i5dqb1.png?width=1024&format=png&auto=webp&s=c4e9abc47d193474a2fa1a7e337d9d9340dce947"),
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ]
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child:const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Madrid City Tour For Designers",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
              
                    Text("Madrid, Spain",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                  ]
                ),
              ),
            ),

            const SizedBox(height: 10), 

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowTextIcon('200', Icons.favorite_rounded),
                  rowTextIcon('82', Icons.upload),
                  rowTextIcon('70', Icons.message),
                  rowTextIcon('120', Icons.face)
                ]
              ),
            ),
            
            Divider(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing diam donec adipiscing tristique risus nec. Auctor urna nunc id cursus metus aliquam. In fermentum et sollicitudin ac orci phasellus. Morbi enim nunc faucibus a pellentesque sit. Augue interdum velit euismod in pellentesque massa placerat duis. Cursus risus at ultrices mi tempus imperdiet nulla malesuada pellentesque. Felis eget nunc lobortis mattis aliquam faucibus purus. Id leo in vitae turpis massa sed elementum tempus egestas. Ipsum consequat nisl vel pretium lectus quam id leo in.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  )
                ),
              ),
            )
          ],
          )
        ),

      )
    );
  }

  Widget rowTextIcon(String text, IconData icon){
    return Row(
      children: [
        Text(text,
        style:const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
          ),
        ),

        const SizedBox(width: 5),

        Icon(icon)
      ]
    );
  }
}