import 'package:flutter/material.dart';
import 'package:taskk/forgetPass.dart';
import 'package:taskk/layout.dart';
import 'package:taskk/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff25316D),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w500,
              height: 2,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Sign in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(35.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Email ',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      child: MaterialButton(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              LayoutScreen()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        color: Color(0xff25316D),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>
                              ForgetPass()));
                        }, child: Text('Forget Password')),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Or'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.facebook,
                          size: 35,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) =>
                          RegisterScreen()));

                    }
                        , child: Text('Dont have an account? Sign Up'))


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
