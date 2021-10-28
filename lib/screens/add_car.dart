import 'package:flutter/material.dart';
import 'package:hire/utils/size.dart';
import 'dart:async';
import 'package:multi_image_picker2/multi_image_picker2.dart';

class AddCar extends StatefulWidget {
  AddCar({Key? key}) : super(key: key);

  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  List<Asset> images = <Asset>[];

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    if (!mounted) return;

    setState(() {
      images = resultList;
      // _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Multiple Picker Image'),
      // ),
      body: Container(
        height: getProportionateScreenHeight(700, context),
        width: getProportionateScreenWidth(400, context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Center(child: Text('Error: $_error')),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Car Brand'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Car Model'),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Plate Number'),
            ),
            ElevatedButton(
              child: Text("Pick images"),
              onPressed: loadAssets,
            ),
            Expanded(
              child: buildGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
