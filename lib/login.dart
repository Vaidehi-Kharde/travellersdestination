import 'package:flutter/material.dart';

void main() {
  runApp(const Login_Page());
}

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4, top: 100 ),
            child: const Text("Travellers Destination", style: TextStyle(
                color: Colors.blue,
                fontSize: 45
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100 ,
                        filled: true,
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100 ,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100 ,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text('Sign in', style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.pushNamed(context, '/home');
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    }, child: const Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Text('Sign up', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 27,
                        color: Color(0xff4c505b),
                      ),
                      ),
                    )
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: TextButton(onPressed: () {
                        Navigator.pushNamed(context, '/forgotpassword');
                      }, child: const Text('Forgot Password', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Color(0xff4c505b),
                      ),
                      )
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
