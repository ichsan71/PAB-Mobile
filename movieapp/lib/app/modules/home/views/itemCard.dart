import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.judul, required this.popularity})
      : super(key: key);
  final String judul;
  final double popularity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueAccent,
        ),
        child: Row(
          children: [
            Text("Ini untuk Gambar"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Genre : Comedy",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  popularity.toString(),
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Release Date : 20-20-2022",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
