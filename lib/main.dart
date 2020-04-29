import 'package:flutter/material.dart';
import 'package:fluttersmoothiebar/model/smoothie.dart';
import 'package:fluttersmoothiebar/smoothiedetails.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Smoothie Bar"),
        backgroundColor: Color(0xFFF05262),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: smoothies.length,
        itemBuilder: (BuildContext ctxt, int index) {
          Smoothie smoothie = smoothies[index];
          return Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => SmoothieDetails(
                    smoothie: smoothie,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 30.0, top: 22.0),
                          height: screenHeight * 0.2,
                          width: screenWidth * 0.8,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.only(left: 53.0),
                              child: Text(
                                smoothie.name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(smoothie.color),
                              borderRadius:
                                  BorderRadius.circular(screenHeight * 0.1)),
                        ),
                        Image.asset(
                          smoothie.imagePath,
                          height: screenHeight * 0.25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
