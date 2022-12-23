import 'package:doctor_appoinment_app/Screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Your Time'),
        ),
        body: Center(
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                
              ),

          
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    textStyle: const TextStyle(fontFamily: 'Montserrat Bold'),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Log In'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/DashboardPage');
                  },
                ),),
              Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontFamily: 'Montserrat Bold'),
                    backgroundColor: Colors.blue,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignupPage');
                  } ,
                ),),
              TextButton(
                onPressed: () {


                },
                
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black, fontFamily: 'Montserrat Italic'),
                ),
              ),
            ],
          ),
        ));
  }
}