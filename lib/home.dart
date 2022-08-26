import 'package:flutter/material.dart';
import 'package:submission/model/town_repository.dart';
import 'detail.dart';

import 'model/town.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}): super(key: key);

  List<Card> _buildList(BuildContext context) {
    List<Town> towns = TownRepository.loadTown();
    if (towns.isEmpty) {
      return const <Card>[];
    }

    return towns.map((e) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailPage(town: e)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 18.0 / 11.0,
                  child: Image.network(
                    e.imagePath,
                    width: 100,
                    height: 100,
                  )
              ),
              Padding(padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(e.name),
                    const SizedBox(height: 8.0),
                    Text('Gubernur: ${e.governor}'),
                  ],
                ),)
            ],
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: GridView.count(crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildList(context),
      ),
    );
  }
}