import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {

  final String textItem;

  const ListItem({super.key, required this.textItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16.0),
        width: 200,
        height: 250,

        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(textItem, style:const TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
    );
  }
}