import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_craft/home.dart';
import 'package:food_craft/pages/home_page.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  bool isLoading = false;
  final auth = FirebaseAuth.instance;

    register () async {
    if(password.text != confirm.text){
      print("Must be the same password and confirm password");
    }else{
      try{
        isLoading = true;
        setState(() {});
        var response = await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);

        print("Success $response");
      }catch(ex){
          print(ex);
      }
      isLoading = false;
      setState(() {});

    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 103, 116),
          elevation: 0,
          title: Text('Register'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

               // image loging icon
               Image.asset("assets/images/restaurent.png"),

              // email text filed
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder()
                  ),
                ),
              ),

              // password textfiled 
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              // confirm password
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: TextField(
                  controller: confirm,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Confirm Passwrd",
                    border: OutlineInputBorder()
                  ),
                ),
              ),

              // submit data
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 114, 25, 19)
                  ),
                  onPressed: () => {
                    register(),
                    email.clear(),
                    password.clear(),
                    confirm.clear(),
                    Navigator.pushReplacement(context, 
                      MaterialPageRoute(builder: (context) => Home())
                    )

                  },
                  child: isLoading ? const CircularProgressIndicator() : const Text("Submitt"),
                ),
              ) 


            ],
          ),
        ),
      
    );
  }
}



