import 'package:flutter/material.dart';
import 'package:hire/components/body.dart';

class CarDetail extends StatefulWidget {
  final String imagePath;
  //const DestinationDetail(this.imagePath);
  CarDetail({Key? key, required this.imagePath}) : super(key: key);

  @override
  _CarDetailState createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Body(),
    );
  }
}