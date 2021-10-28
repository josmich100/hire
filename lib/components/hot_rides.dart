import 'package:flutter/material.dart';
import 'package:hire/components/primary.dart';
import 'package:hire/screens/details.dart';
import 'package:hire/utils/colors.dart';

class HotRides extends StatefulWidget {
  final String imagePath;
  final String carBrand;
  final String mileAge;
  HotRides(
      {Key? key,
      required this.imagePath,
      required this.carBrand,
      required this.mileAge})
      : super(key: key);

  @override
  _HotRidesState createState() => _HotRidesState();
}

class _HotRidesState extends State<HotRides> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CarDetail(
                      imagePath: widget.imagePath,
                    )))
      },
      child: Stack(children: [
        Hero(
          tag: widget.imagePath,
          child: Container(
            height: 200,
            width: 140,
            margin: const EdgeInsets.only(right: 25),
            padding: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage(
                  widget.imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 200,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [AnanabColor.secondaryColor, Colors.transparent]),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryText(
                    text: widget.carBrand,
                    size: 15,
                    fontWeight: FontWeight.w800),
                SizedBox(height: 4),
                PrimaryText(
                    text: widget.mileAge,
                    color: Colors.white54,
                    size: 10,
                    fontWeight: FontWeight.w800)
              ]),
        ),
      ]),
    );
  }
}
