import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StagGrid(),
  ));
}

class StagGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Staggered grid")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: CustomClass(
                  image: 'assets/Images/Carl2.jpeg',
                  text: 'Mysteries of the U...',
                  title: '20 jun 2013',
                  subtitle: 'Carl Sagan',
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: CustomClass(
                  image: 'assets/Images/Empire 2.jpeg',
                  text: 'An Empire State of...',
                  title: '19 jun 2013',
                  subtitle: 'Ernest Hemingway',
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.6,
                child: CustomClass(
                  image: 'assets/Images/Tea.jpeg',
                  text: '10 Tips for Hipster ...',
                  title: '10 May 2013',
                  subtitle: 'Vincent Van Gogh',
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: CustomClass(
                  image: 'assets/Images/william.jpeg',
                  text: 'To the world of lov...',
                  title: '10 jun 2013',
                  subtitle: 'William Shakesphere',
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.7,
                child: CustomClass(
                  image: 'assets/Images/dog2.jpeg',
                  text: 'Better than Others...',
                  title: '23 March 2013',
                  subtitle: 'Mathews Alexon',
                ),
              ),
            ]),
      ),
    );
  }
}

class CustomClass extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String subtitle;

  CustomClass(
      {required this.image,
        required this.text,
        required this.title,
        required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(2),child: Image(image: AssetImage(image))),
              const SizedBox(height: 10),
              Text(text,style: const TextStyle(fontSize: 22),),
              const SizedBox(height: 13),
              Text(title,style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 3),
              Text(subtitle,style: const TextStyle(color: Colors.grey)),
            ],
            ),
        );
    }
}