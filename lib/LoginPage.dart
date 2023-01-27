import 'my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController= TextEditingController();
  final passwordController= TextEditingController();



  void signUserIn(){}

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height :10),
              //logo
              Icon(Icons.lock,
                size:100,
              ),
              const SizedBox(height :50),

              //welcome back

              Text('Welcome back you\'ve been missed !!',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,

                ),
              ),
              const SizedBox(height :15),
              //username
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height :10),
              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height :10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text('Forgot password',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),

              //forgot password


              const SizedBox(height :15),
              GestureDetector(
                onTap: signUserIn,
                child:Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child:
                  Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height :15),
              //continue
              //not a member register now
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('Not a member?',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(width :4),
                  Text('Register now',
                    style: TextStyle(color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
