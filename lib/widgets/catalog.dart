import 'package:flutter/material.dart';

class CatalogListTile extends StatelessWidget {
  final imgUrl;

  CatalogListTile(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // навигация на страницу каталога
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text('Summer cocktails!'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('09:00 - 00:00'),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.amberAccent,
                  ),
                  Text('4.9'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
