import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String descr;
  final num price;
  final String imgUrl;
  final color;

  Product({
    @required this.id,
    @required this.title,
    @required this.descr,
    @required this.imgUrl,
    @required this.price,
    @required this.color,
  });
}

class ProductDataProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Alabama Slammer',
      price: 4.66,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.thespruceeats.com/thmb/jo9aToU3SCdz2pJ4LUmats5Xx_U=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/AlabamaSlammer-135583351-56a170723df78cf7726aa8d0.jpg',
      color: '0xFFFFF59D',
    ),
    Product(
      id: 'p2',
      title: 'Americano',
      price: 3.99,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.garnishwithlemon.com/wp-content/uploads/2019/08/Gin-Elderflower-Prosecco-Cocktail-2019-3-of-4-735x1103.jpg',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p3',
      title: 'Añejo Highball ',
      price: 7.89,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2016/6/10/1/VB0304H_Watermelon-Cocktails_s4x3.jpg.rend.hgtvcom.826.620.suffix/1467180444844.jpeg',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p4',
      title: 'Aperol Spritz ',
      price: 6.11,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.thespruceeats.com/thmb/jo9aToU3SCdz2pJ4LUmats5Xx_U=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/AlabamaSlammer-135583351-56a170723df78cf7726aa8d0.jpg',
      color: '0xFFCCFF90',
    ),
    Product(
      id: 'p5',
      title: 'Bacardi Cocktail',
      price: 9.52,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://i.insider.com/5c2f4534ad9571412a2cb0c3?width=1067&format=jpeg',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p6',
      title: 'Blue Hawaiian',
      price: 6.82,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://images.unsplash.com/photo-1536935338788-846bb9981813?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y29ja3RhaWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
      color: '0xFFFFF59D',
    ),
    Product(
      id: 'p7',
      title: 'Bramble',
      price: 6.24,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.thespruceeats.com/thmb/jo9aToU3SCdz2pJ4LUmats5Xx_U=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/AlabamaSlammer-135583351-56a170723df78cf7726aa8d0.jpg',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p8',
      title: 'Baltimore Bang ',
      price: 5.12,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.acouplecooks.com/wp-content/uploads/2020/11/Christmas-Martini-012.jpg',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p9',
      title: 'Caipirini',
      price: 9.24,
      descr:
          'The Alabama Slammer has a short history, though both this highball and the shooter of the same name were hits at the bar from the 1970s through the \'80s. They were popular among the college crowds of the time, particularly at the University of Alabama where the drinks supposedly originated.',
      imgUrl:
          'https://www.liquor.com/thmb/ytORsnU2GDY6UXDypweDQCzoT2I=/450x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__liquor__2019__04__24075106__Aperol-Spritz-720x720-recipe-d36b577de7974fd3a9051707c07bd30b.jpg',
      color: '0xFFCCFF90',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id) =>
      _items.singleWhere((element) => element.id == id);
}
