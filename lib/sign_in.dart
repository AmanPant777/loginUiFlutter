import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child:Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage( 'https://images.unsplash.com/photo-1636622017988-94c471d9d955?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=386&q=80'),
                  fit:BoxFit.contain,
                  alignment: Alignment.bottomCenter
                  )
              ),
            )
            ),
            Expanded(
              flex: 3,
              child:Column(
                children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('SIGN IN',style: Theme.of(context).textTheme.display1,),
                        Text('SIGN UP',style: Theme.of(context).textTheme.button,)
                      ]
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.alternate_email,color: Colors.amber),
                          Expanded(
                            child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email Address "
                            ),
                          )
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock,color: Colors.amber),
                        Expanded(
                          child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password ",

                          ),
                        )
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                         Container(
                           padding: EdgeInsets.all(15),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               color: Colors.white.withOpacity(0.5)
                             )
                           ),
                           child: Icon(
                             Icons.android,
                             color: Colors.white.withOpacity(0.7),
                           ),
                         ),
                         SizedBox(width: 20),
                          Container(
                           padding: EdgeInsets.all(15),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             border: Border.all(
                               color: Colors.white.withOpacity(0.5)
                             )
                           ),
                           child: Icon(
                             Icons.chat,
                             color: Colors.white.withOpacity(0.7),
                           ),
                         ),
                         Spacer(),
                           Container(
                           padding: EdgeInsets.all(15),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                            color: Colors.amber
                           ),
                           child: Icon(
                             Icons.forward,
                             color: Colors.black.withOpacity(0.7),
                           ),
                         ),
                      ],),
                    )
                ],
              )
              )
        ],
      ),
    );
  }
}
