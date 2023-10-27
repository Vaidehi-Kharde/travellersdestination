import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  const Reset({super.key});

  @override
  Widget build(BuildContext context) {
    String value = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot your password? Don't worry"),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 200, right: 200),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_box),
                labelText: "Username",
              ),
              onChanged: (text) {
              value = text;
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 200, right: 200),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_box),
                labelText: "Email",
              )
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 200, right: 200),
            child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add_box),
                  labelText: "Birth Date",
                )
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 200, right: 200),
            child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.add_box),
                  labelText: "New Password",
                )
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
