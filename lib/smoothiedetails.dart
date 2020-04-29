import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttersmoothiebar/model/smoothie.dart';

class SmoothieDetails extends StatefulWidget {
  final Smoothie smoothie;
  const SmoothieDetails({Key key, this.smoothie}) : super(key: key);

  @override
  _SmoothieDetailsState createState() => _SmoothieDetailsState();
}

class _SmoothieDetailsState extends State<SmoothieDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.smoothie.name),
        backgroundColor: Color(widget.smoothie.color),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.4),
                  height: screenHeight * 1,
                  color: Color(widget.smoothie.color),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: screenHeight * 0.12),
                      child: Center(
                        child: Image.asset(
                          widget.smoothie.imagePath,
                          height: screenHeight * 0.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Calories",
                      style: TextStyle(fontSize: 24.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.smoothie.calories,
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Ingredients",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25.0),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  widget.smoothie.ingredient1,
                                  style: TextStyle(
                                    color: Color(widget.smoothie.color),
                                  ),
                                ),
                                Text(
                                  widget.smoothie.ingredient2,
                                  style: TextStyle(
                                    color: Color(widget.smoothie.color),
                                  ),
                                ),
                                Text(
                                  widget.smoothie.ingredient3,
                                  style: TextStyle(
                                    color: Color(widget.smoothie.color),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    widget.smoothie.ingredient4,
                                    style: TextStyle(
                                      color: Color(widget.smoothie.color),
                                    ),
                                  ),
                                  Text(
                                    widget.smoothie.ingredient5,
                                    style: TextStyle(
                                      color: Color(widget.smoothie.color),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 160,
                      margin: EdgeInsets.symmetric(horizontal: 25.0),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: 160,
                                color: Colors.white60,
                                child: Image.asset(
                                  widget.smoothie.ingImgPath1,
                                  height: 140,
                                  width: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: 160,
                                color: Colors.white60,
                                child: Image.asset(
                                  widget.smoothie.ingImgPath2,
                                  height: 140,
                                  width: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: 160,
                                color: Colors.white60,
                                child: Image.asset(
                                  widget.smoothie.ingImgPath3,
                                  height: 140,
                                  width: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: 160,
                                color: Colors.white60,
                                child: Image.asset(
                                  widget.smoothie.ingImgPath4,
                                  height: 140,
                                  width: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: 160,
                                color: Colors.white60,
                                child: Image.asset(
                                  widget.smoothie.ingImgPath5,
                                  fit: BoxFit.cover,
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Description",
                          style: TextStyle(fontSize: 24.0, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.smoothie.description,
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
