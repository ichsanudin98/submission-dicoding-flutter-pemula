import 'package:flutter/material.dart';
import 'package:submission/model/town.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.town});

  final Town town;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(5.0),
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      town.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(height: 10.0),
                    Image.network(
                      town.imagePath,
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 7.0),
              Text(
                'Gubernur : ${town.governor}',
                  style: Theme.of(context).textTheme.bodyText1
              ),
              const SizedBox(height: 7.0),
              Text(
                  'Provinsi : ${town.province}',
                  style: Theme.of(context).textTheme.bodyText1
              ),
              const SizedBox(height: 7.0),
              Text(
                  'Deskripsi : ${town.description}',
                  style: Theme.of(context).textTheme.bodyText1
              ),

            ],
          )
      ),
    );
  }
}