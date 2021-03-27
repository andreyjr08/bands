import 'package:band_names/model/band.dart';
import 'package:flutter/material.dart';

class HomePAge extends StatefulWidget {
  @override
  _HomePAgeState createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  List<Band> bands = [
    Band(id: '1', name: 'Prueba', votes: 5),
    Band(id: '1', name: 'Prueba2', votes: 3),
    Band(id: '1', name: 'Prueba3', votes: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BandNames'),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: bands.length,
          itemBuilder: (BuildContext context, int index) {
            return _bandTile(bands[index]);
          },
        ));
  }

  ListTile _bandTile(Band band) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(band.name.substring(0, 2)),
      ),
    );
  }
}
