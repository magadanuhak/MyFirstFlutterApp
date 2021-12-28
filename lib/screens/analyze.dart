import 'package:first_flutter/constants/app_constants.dart';
import 'package:first_flutter/widgets/left_bar.dart';
import 'package:first_flutter/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class AnalyzeScreen extends StatefulWidget {
  const AnalyzeScreen({Key key}) : super(key: key);

  @override
  _AnalyzeScreenState createState() => _AnalyzeScreenState();
}

class _AnalyzeScreenState extends State<AnalyzeScreen> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double resultWeight = 0;
  String textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analyzer",
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
            )
          ],
        ),
      ),
    );
  }
}
