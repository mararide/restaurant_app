import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_craft/pages/home_page.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm = TextEditingController();
  bool isLoading = false;

  final auth = FirebaseAuth.instance;

  login() async {
    try{
      isLoading = true;
      setState(() {});
      var response = await auth.signInWithEmailAndPassword(email: email.text, password: password.text);
      print("Success $response");
    }catch(e){
      print(e);
    }
    isLoading = false;
    setState(() {});
  }
 
  
  @override
  Widget build(BuildContext context) {
    // var currentUser = auth.currentUser;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 77, 103, 116),
          elevation: 0,
          title: Text('Login'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // image loging icon
               Image.asset("assets/images/restaurent.png"),
    
              // SizedBox(height: 20,),
              // Text(currentUser?.email??"", style: TextStyle(fontSize: 20),),
              // SizedBox(height: 20,),
    
              // enter emails
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
    
              // enter password
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
    

              // submitt data
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 114, 25, 19)
                  ),
                  onPressed: () => {
                    login(),
                    email.clear(),
                    password.clear(),
                    confirm.clear(),
                    Navigator.pushReplacement(context, 
                      MaterialPageRoute(builder: (context) => HomePage())
                    )
                  },
                  child: isLoading ? const CircularProgressIndicator() : const Text("Login", style: TextStyle(fontSize: 20),),
                ),
              )


    
            ],
          ),
        ),
      
    );
  }
}