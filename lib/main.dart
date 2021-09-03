import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rating = 0.0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: [
                Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                        /*boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),*/
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 8,
                        intensity: 1,
                        lightSource: LightSource.topLeft,
                        color: Colors.white60),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image(
                          image: NetworkImage(
                              'https://is1-ssl.mzstatic.com/image/thumb/Purple124/v4/6c/b3/03/6cb3030a-12a7-0399-79d1-234b45d1300c/source/512x512bb.jpg')),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Text(
                    'McKinsey Insights Episode 21: Auto Industry & AI (Preview)',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: NeumorphicSlider(
                    height: 10,
                    max: 100,
                    min: 0,
                    value: rating,
                    onChanged: (n) {
                      setState(() {
                        rating = n;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NeumorphicButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.queue_music,
                          size: 20,
                        ),
                      ),
                      NeumorphicButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.play_arrow,
                          size: 20,
                        ),
                      ),
                      NeumorphicButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.stop_circle_outlined,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: NeumorphicButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.backpack_outlined),
                        Text('Purchase Episode')
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
