import 'package:flutter/material.dart';

class OpenBook extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  const OpenBook(
      {Key? key,
      required this.title,
      required this.image,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 217, 237),
      appBar: AppBar(
        title: Text('Open Book'),
        backgroundColor: const Color.fromARGB(255, 103, 114, 157),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.network(image),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
