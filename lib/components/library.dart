import 'package:flutter/material.dart';
import 'package:hire/utils/size.dart';

class MyCars extends StatelessWidget {
  const MyCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
      width: double.infinity,
      height: getProportionateScreenHeight(315, context),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/audi.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            // decoration: cardInfoDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Audi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    // Spacer(),
                    // LikedButton()
                  ],
                ),
                // SmoothStarRating(
                //   allowHalfRating: false,
                //   onRated: (v) {},
                //   starCount: 5,
                //   rating: place.rating,
                //   size: 20,
                //   isReadOnly: true,
                //   color: kRatingStarColor,
                //   borderColor: kRatingStarColor,
                // )
              ],
            ),
          )
        ],
      ),
    );
    // return Column(
    //   children: [
    //     // SectionTitle(
    //     //   title: "Right Now At Spark",
    //     //   press: () {},
    //     // ),
    //     //VerticalSpacing(of: 20),
    //     // SingleChildScrollView(
    //     //   clipBehavior: Clip.none,
    //     //   scrollDirection: Axis.horizontal,
    //     //   child: Row(
    //     //     children: [
    //     //       ...List.generate(
    //     //         travelSpots.length,
    //     //         (index) => Padding(
    //     //           padding: EdgeInsets.only(
    //     //               left: getProportionateScreenWidth(kDefaultPadding, context)),
    //     //           child: PlaceCard(
    //     //             travelSport: travelSpots[index],
    //     //             press: () {},
    //     //           ),
    //     //         ),
    //     //       ),
    //     //       SizedBox(
    //     //         width: getProportionateScreenWidth(kDefaultPadding, context),
    //     //       ),
    //     //     ],
    //     //   ),
    //     // ),
    //   ],
    // );
  }
}
