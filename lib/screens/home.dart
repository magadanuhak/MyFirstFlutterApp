import 'package:first_flutter/constants/app_constants.dart';
import 'package:first_flutter/widgets/left_bar.dart';
import 'package:first_flutter/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double resultWeight = 0;
  String textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator obezitate",
          style: TextStyle(color: accentColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: accentColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Înălțime",
                        hintStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: accentColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Greutate",
                        hintStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  resultWeight = _w / (_h * _h);

                  if (resultWeight > 25) {
                    textResult = "Ești obez";
                  } else if (resultWeight >= 18.5 && resultWeight < 25) {
                    textResult = "Ai o masă normală";
                  } else {
                    textResult = "Ar fi bine ca să te mai îngrași";
                  }
                });
              },
              child: Text(
                "Calculează",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: accentColor),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                resultWeight.toStringAsFixed(2),
                style: TextStyle(fontSize: 25, color: accentColor),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: textResult.isNotEmpty,
              child: Container(
                child: Text(
                  textResult,
                  style: TextStyle(fontSize: 25, color: accentColor),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 40),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 120),
            const SizedBox(
              height: 10,
            ),
            const LeftBar(barWidth: 70),
            const SizedBox(
              height: 10,
            ),
            const RightBar(barWidth: 30),
            const SizedBox(
              height: 10,
            ),
            const RightBar(barWidth: 47),
            const SizedBox( height: 16,),

            Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                "Aplicație elaborată de Daniel Maga. Prima mea aplicație pe flutter și dart, m-am inspirat puțin de pe net",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
