import 'package:flutter/material.dart';

class usercard extends StatefulWidget {
  const usercard({super.key});

  @override
  State<usercard> createState() => _usercardState();
}

class _usercardState extends State<usercard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 25,
            backgroundColor: Colors.yellow[100],
          ),
          title: Text("Sahil"),
          subtitle: Text("last seen"),
          trailing: Text("12:00"),
        ),
      ),
    );
  }
}
