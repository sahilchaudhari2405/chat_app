import 'package:chatapp/screen/usercard.dart';
import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        title: Text("chats"),
        elevation: 0.0,
        backgroundColor: Colors.black,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemExtent: 100,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.brown,
                        radius: 35,
                      ),
                    ),
                    Text(
                      "sahil",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                );
              },
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.84,
            minChildSize: 0.84,
            builder: (BuildContext context, ScrollController scrollController) {
              return ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                child: Container(
                  color: Colors.white,
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 11.0),
                    physics: BouncingScrollPhysics(),
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return usercard();
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
