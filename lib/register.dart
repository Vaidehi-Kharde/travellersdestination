import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade50,
            title: const Text("Signing up", style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              ),
            ),
          ),
          body: const Column(
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 200, right: 200),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white38,
                      filled: true,
                      suffixIcon: Icon(Icons.add_box_outlined),
                      labelText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    decoration:  InputDecoration(
                        fillColor: Colors.white38,
                        filled: true,
                        suffixIcon: Icon(Icons.add_box_outlined),
                        labelText: 'Email Address',
                        hintText: 'xyz@gmail.com'
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    obscureText: true,
                    minLines: 1,
                    decoration: InputDecoration(
                      fillColor: Colors.white38,
                      filled: true,
                      suffixIcon: Icon(Icons.add_box_outlined),
                      labelText: 'Password',
                      hintText: 'must contain atleast 1 digit',
                    ),
                  ),
                ),
                  SizedBox(
                    height: 40,
                  ),
                Padding(
                  padding: EdgeInsets.only(left: 200, right: 200),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white38,
                      filled: true,
                      suffixIcon: Icon(Icons.add_box_outlined),
                      labelText: 'Number',
                    ),
                  ),
                )
              ],
            )
        );
  }
}
