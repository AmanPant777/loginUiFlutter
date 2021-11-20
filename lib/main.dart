import 'package:flutter/material.dart';
import 'package:login/sign_in.dart';
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
            color: Colors.amber
          ),
          headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.amber.withOpacity(0.5))
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
            flex: 3,
            child:Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1636382448252-17367df17b99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'))
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
                  )),
                  InkWell(
                    onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen()));
                    },
                    child: FittedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber[400]
                        ),
                        child: Row(
                          children:[
                            Text('Start Learning',style: Theme.of(context).textTheme.button!.copyWith(
                              color: Colors.black
                            ),),
                            SizedBox(width: 30,),
                            Icon(Icons.arrow_forward)
                          ]
                        ),
                      ),
                    ),
                  )
                ],
              ) 
              )
        ],
      ),
    );
  }
}
