import 'package:flutter/material.dart';

class FavoriteBook extends StatelessWidget {
  final List<Map<String, dynamic>> favoriteItems;

  const FavoriteBook({Key? key, required this.favoriteItems}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 217, 237),
      appBar: AppBar(
        title: const Text(
          'Buku Favorit',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 103, 114, 157),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            return GridTile(
                footer: GridTileBar(
                  backgroundColor: const Color.fromARGB(115, 9, 9, 9),
                  title: Text(favoriteItems[index]['title']!),
                ),
                child: Image.network(
                  favoriteItems[index]['image']!,
                  fit: BoxFit.fill,
                ));
          }),
    );
  }
}
