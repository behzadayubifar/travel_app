import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Model/travel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  final double _imageSize = 55;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // color: Colors.red,
                width: double.infinity,
                height: size.height / 1.8,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        image: DecorationImage(
                          image: AssetImage(travels[_selectedIndex].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(100, 255, 255, 255),
                                ),
                                child: const Icon(CupertinoIcons.arrow_left),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(100, 255, 255, 255),
                                ),
                                child: const Icon(CupertinoIcons.heart),
                              ),
                            ]),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 80,
                      child: SizedBox(
                        width: 90,
                        height: double.maxFinite,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return imageItem(index);
                          },
                          itemCount: travels.length,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 80,
                      left: 40,
                      child: Container(
                        // width: double.infinity,
                        // height: double.maxFinite,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            gradient: LinearGradient(
                                colors: [Colors.black54, Colors.black38])),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                travels[_selectedIndex].name,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.placemark,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    travels[_selectedIndex].location,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                // color: Colors.blue,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(40, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Distance"),
                                Text("${travels[_selectedIndex].distance} km "),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(40, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Temp"),
                                Text(
                                    "${travels[_selectedIndex].temp} \u00B0C "),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                              color: Color.fromARGB(40, 0, 0, 0),
                              width: 1,
                            ),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("Rating"),
                                Text(travels[_selectedIndex].rating),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const ExpandableText(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus Mattis pellentesque id nibh tortor id aliquet lectus proin Sapien faucibus et molestie ac feugiat sed lectus vestibulum ",
                            expandText: "read more",
                            collapseText: "less",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Total Price",
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(travels[_selectedIndex].price,
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget imageItem(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 500,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    travels[index].image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              width: _selectedIndex == index ? _imageSize + 15 : _imageSize,
              height: _selectedIndex == index ? _imageSize + 15 : _imageSize,
            ),
          ),
        ),
      ],
    );
  }
}
