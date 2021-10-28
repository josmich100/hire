import 'package:flutter/material.dart';
import 'package:hire/components/search.dart';
import 'package:hire/utils/size.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: getProportionateScreenWidth(25, context)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.network(
            "assets/images/audi.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: getProportionateScreenHeight(315, context),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getProportionateScreenHeight(80, context)),
              Text(
                "Car Hire",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(73, context),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 0.5),
              ),
              Text(
                "Ananab Car Hire",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Positioned(
            bottom: getProportionateScreenWidth(-2, context),
            child: Search(),
          )
        ],
      ),
    );
  }
}
