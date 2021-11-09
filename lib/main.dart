import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.black12,
        textTheme: TextTheme(
          display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          button: TextStyle(
            color: Colors.red
          ),
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal
          )
        )
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:Container(
              decoration: BoxDecoration(
                image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1636382448252-17367df17b99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'))
              ),
            ) 
            ),
            Expanded(
              child:Column(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Flower Art\n',
                        style: Theme.of(context).textTheme.display1
                      ),
                      TextSpan(
                        text: 'Master the art of flower',
                        style: Theme.of(context).textTheme.headline
                      )
                    ]
                  ))
                ],
              ) 
              )
        ],
      ),
    );
  }
}
