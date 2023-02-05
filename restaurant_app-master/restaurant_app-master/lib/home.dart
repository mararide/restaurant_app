
import 'package:flutter/material.dart';
import 'package:food_craft/pages/login.dart';
import 'package:food_craft/pages/register.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // image of logo eccomerce
            Image.asset("assets/images/restaurent.png"),
            SizedBox(height: 100,),

            // login the app
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,                  
                ),
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Login())
                  );
                },
                child: Text("Login",style: TextStyle(fontSize: 20, color: Colors.black),),
                )
            ),

            // register the app
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,                  
                ),
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Register())
                  );
                },
                child: Text("Register", style: TextStyle(fontSize: 20, color: Colors.black),),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
