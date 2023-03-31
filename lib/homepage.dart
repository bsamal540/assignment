//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart';
import 'package:project_test/user_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwdController = TextEditingController();
void login(email,passwd) async{
  try{
    Response response = await post(
      Uri.parse('https://reqres.in/api/register'),
      body:{
        'email':email,
        'password':passwd,
      }
    );
    if(response.statusCode == 200){
      //print("created successfully");
      
        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UsrScreen()));
  
      
    }else{
      // print('failed ${response.statusCode}');
      // print(email);
      // print(passwd);
      final snackBar =SnackBar(content: Text("User Id or Passwd is invalid"),);
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
  catch(e){
    print(e.toString());
  }
}
void signup(email,passwd) async{
  try{
    Response response = await post(
      Uri.parse('https://reqres.in/api/register'),
      body:{
        'email':email,
        'password':passwd,
      }
    );
    if(response.statusCode == 200){
      //print("created successfully");
      final snackBar =SnackBar(content: Text("Signup successfully"),);
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
        
  
      
    }else{
      final snackBar =SnackBar(content: Text("Contact Tech team"),);
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
     // print('failed ${response.statusCode}');
     // print(email);
     // print(passwd);
    }
  }
  catch(e){
   // print(e.toString());
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        title: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
              child: RichText(
                text: const TextSpan(
                  text: "  Welcome , ",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      
                      text: "to sign  in  continue",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                  ],
                ),
              ),
                    ),
            ),
      ),

       
      
      body: SingleChildScrollView(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            TextFormField(
             // initialValue: 'eve.holt@reqres.in',
              controller: emailController,
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                 hintText: "Enter Your Id"
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
             // initialValue: 'pistol',
              controller: passwdController,
      
              //
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  helperStyle: TextStyle(color: Colors.white),
                  hintText: "Enter Your passwd",
                  fillColor: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            
            
           
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    
                    onPressed: () {
                      signup(emailController.text.toString(),passwdController.text.toString());
                    //   final snackBar =SnackBar(content: Text("Signup successfully"),);
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
                    child: Text("Sign Up"),
                  ),
                  // Spacer(flex:1),
                  ElevatedButton(
                    onPressed: () {
                      login(emailController.text.toString(),passwdController.text.toString());
                    },
                    child: Text("Log In"),
                  )
                ],
              ),
           
            SizedBox(
              height: 5,
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  "Forget passwd",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
