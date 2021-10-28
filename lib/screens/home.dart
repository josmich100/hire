import 'package:flutter/material.dart';
import 'package:hire/components/body.dart';
import 'package:hire/components/header.dart';
import 'package:hire/components/hot_rides.dart';
import 'package:hire/components/primary.dart';
import 'package:hire/data.dart';
import 'package:hire/screens/add_car.dart';
import 'package:hire/screens/details.dart';
import 'package:hire/utils/colors.dart';
import 'package:hire/utils/size.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        child: Container(
            width: getProportionateScreenWidth(150, context),
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AnanabColor.secondaryColor,
                  AnanabColor.lightTertiaryColor,
                ],
              ),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.car_rental_outlined,
                      color: Colors.white38,
                      size: 40,
                    ),
                    onPressed: null,
                  ),
                  PrimaryText(text: "Rent A Car", size: 20),
                ])),
        onTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddCar()))
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        height: getProportionateScreenHeight(700, context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [
              AnanabColor.secondaryColor,
              AnanabColor.tertiaryColor,
            ],
          ),
        ),
        child: ListView(
          children: [
            customAppBar(),
            Header(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 25, right: 25, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PrimaryText(
                    text: 'MY RIDES',
                    size: 22,
                  ),
                  PrimaryText(text: 'More', size: 16, color: Colors.white24),
                ],
              ),
            ),

            // SizedBox(
            //   height: 200,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: cars.length,
            //       itemBuilder: (context, index) => Padding(
            //             padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
            //             child: carCard(
            //                 context, cars[index]['imagePath'].toString()),
            //           )),
            // ),
            // SizedBox(height: 30),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       top: 20, left: 25, right: 25, bottom: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: const [
            //       PrimaryText(
            //         text: 'Hot Destination',
            //         size: 24,
            //       ),
            //       PrimaryText(text: 'More', size: 16, color: Colors.white24),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotrides.length,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                        child: HotRides(
                          carBrand: hotrides[index]['carBrand'].toString(),
                          mileAge: hotrides[index]['mileAge'].toString(),
                          imagePath: hotrides[index]['imagePath'].toString(),
                        ),
                      )),
            ),
            SizedBox(height: 100),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       top: 30, left: 25, right: 25, bottom: 30),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: const [
            //       PrimaryText(
            //         text: 'MY RIDES',
            //         size: 20,
            //       ),
            //       PrimaryText(
            //           text: '22 Reviews', size: 14, color: Colors.white24),
            //     ],
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.only(
            //       top: 0, left: 25, right: 25, bottom: 30),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         width: 30,
            //         height: 30,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(50),
            //           image: DecorationImage(
            //             image: AssetImage('assets/audi.jpeg'),
            //           ),
            //         ),
            //       ),
            //       SizedBox(width: 20),
            //       SizedBox(
            //         width: MediaQuery.of(context).size.width - 100,
            //         child: Column(
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: const [
            //                 PrimaryText(
            //                   text: 'Arjun Unni',
            //                   size: 16,
            //                 ),
            //                 PrimaryText(
            //                     text: 'Jan 25',
            //                     size: 10,
            //                     color: Colors.white24),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 15,
            //             ),
            //             PrimaryText(
            //                 text:
            //                     'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',
            //                 size: 13,
            //                 fontWeight: FontWeight.w500,
            //                 color: Colors.white38),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // Widget hotRidesCard(String imagePath, String placeName,
  //     String touristPlaceCount, BuildContext context) {
  //   return GestureDetector(
  //     onTap: () => {
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => CarDetail(
  //                     imagePath: imagePath,
  //                   )))
  //     },
  //     child: Stack(children: [
  //       Hero(
  //         tag: imagePath,
  //         child: Container(
  //           height: 200,
  //           width: 140,
  //           margin: const EdgeInsets.only(right: 25),
  //           padding: const EdgeInsets.only(bottom: 20),
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(25),
  //             image: DecorationImage(
  //               image: AssetImage(imagePath),
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         top: 0,
  //         left: 0,
  //         child: Container(
  //           height: 200,
  //           width: 140,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(25),
  //             gradient: const LinearGradient(
  //                 begin: Alignment.bottomCenter,
  //                 end: Alignment.topCenter,
  //                 colors: [AnanabColor.secondaryColor, Colors.transparent]),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         bottom: 20,
  //         left: 20,
  //         child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               PrimaryText(
  //                   text: placeName, size: 15, fontWeight: FontWeight.w800),
  //               SizedBox(height: 4),
  //               PrimaryText(
  //                   text: touristPlaceCount,
  //                   color: Colors.white54,
  //                   size: 10,
  //                   fontWeight: FontWeight.w800)
  //             ]),
  //       ),
  //     ]),
  //   );
  // }

  Widget carCard(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CarDetail(
                      imagePath: imagePath,
                    )))
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(right: 20),
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 1.0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [AnanabColor.secondaryColor, Colors.transparent],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          PrimaryText(
            text: 'ANANAB',
            size: 32,
            fontWeight: FontWeight.w700,
          ),
          RawMaterialButton(
            constraints: BoxConstraints(minWidth: 0),
            onPressed: null,
            elevation: 2.0,
            fillColor: Colors.white10,
            padding: EdgeInsets.all(8),
            child: Icon(Icons.search_rounded,
                color: AnanabColor.primaryColor, size: 30),
            shape: CircleBorder(),
          )
        ],
      ),
    );
  }
}
