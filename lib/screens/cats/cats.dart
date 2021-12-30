import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/cat.dart';

class Cats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cats = Cat.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cats'),
      ),
      body: ListView(
        children: cats
          .map((cat) => GestureDetector(
          child: Text(cat.name),
          onTap: () => _onCatTap(context, cat.id),
          ))
          .toList(),
    ));
  }

  _onCatTap(BuildContext context, int catID) {
    Navigator.pushNamed(context, CatDetailRoute, arguments: {'id': catID});
  }
}
