import 'package:flutter/material.dart';
import 'package:hire/utils/size.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(313, context),
      height: getProportionateScreenWidth(50, context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          )
        ],
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Search your Ride…",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenWidth(12, context),
            color: Color(0xFF464A7E),
          ),
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20, context),
            vertical: getProportionateScreenWidth(10, context),
          ),
        ),
      ),
    );
  }
}
