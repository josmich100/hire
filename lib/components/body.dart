import 'package:flutter/material.dart';
import 'package:hire/components/header.dart';
import 'package:hire/components/library.dart';
import 'package:hire/components/primary.dart';

class Body extends StatelessWidget {
  

  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        clipBehavior: Clip.none,
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              Header(),
              // VerticalSpacing(),
              Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PrimaryText(
                      text: 'My Cars',
                      size: 20,
                    ),
                    PrimaryText(
                        text: '22 views', size: 14, color: Colors.amber),
                  ],
                ),
              ),
              MyCars(),
              // VerticalSpacing(),
              // TopTravelers(),
              // VerticalSpacing(),
            ],
          ),
        ));
  }
}
