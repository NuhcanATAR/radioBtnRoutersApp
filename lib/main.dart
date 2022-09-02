import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radiobtnapp/page/onePage.dart';
import 'package:radiobtnapp/page/threePage.dart';
import 'package:radiobtnapp/page/twoPage.dart';

void main() {
  runApp(MaterialApp(
    home: radioBtnRouters(),
    debugShowCheckedModeBanner: false,
  ));
}

enum selectOptionMethod { selectone, selectTwo, selectThree }

class radioBtnRouters extends StatefulWidget {
  const radioBtnRouters({super.key});

  @override
  State<radioBtnRouters> createState() => _radioBtnRoutersState();
}

class _radioBtnRoutersState extends State<radioBtnRouters> {
  selectOptionMethod? _selectMethodCheck = selectOptionMethod.selectone;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.orange,
            size: 25,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        width: double.infinity,
        height: screenSize.height,
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            _buildBodyContent,
            _buildFooterContent,
          ],
        ),
      ),
    );
  }

  Widget get _buildBodyContent => Expanded(
        flex: 8,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/undraw_selection_re_ycpo.png"),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 26,
                        height: 26,
                        child: Radio<selectOptionMethod>(
                          value: selectOptionMethod.selectone,
                          activeColor: Colors.orange,
                          focusColor: Colors.red,
                          groupValue: _selectMethodCheck,
                          onChanged: (selectOptionMethod? value) {
                            setState(() {
                              _selectMethodCheck = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Seçenek Türü 1",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 26,
                        height: 26,
                        child: Radio<selectOptionMethod>(
                          value: selectOptionMethod.selectTwo,
                          activeColor: Colors.orange,
                          focusColor: Colors.red,
                          groupValue: _selectMethodCheck,
                          onChanged: (selectOptionMethod? value) {
                            setState(() {
                              _selectMethodCheck = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Seçenek Türü 2",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.8),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 26,
                        height: 26,
                        child: Radio<selectOptionMethod>(
                          value: selectOptionMethod.selectThree,
                          activeColor: Colors.orange,
                          focusColor: Colors.red,
                          groupValue: _selectMethodCheck,
                          onChanged: (selectOptionMethod? value) {
                            setState(() {
                              _selectMethodCheck = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Seçenek Türü 3",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget get _buildFooterContent => Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: GestureDetector(
          onTap: () {
            if (_selectMethodCheck == selectOptionMethod.selectone) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => onepage(),
                ),
              );
              print("1. Seçenek Sayfasına Yönlendirildi");
            } else if (_selectMethodCheck == selectOptionMethod.selectTwo) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => twopage(),
                ),
              );
              print("2. Seçenek Sayfasına Yönlendirildi");
            } else if (_selectMethodCheck == selectOptionMethod.selectThree) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => threepage(),
                ),
              );
              print("3. Seçenek Sayfasına Yönlendirildi");
            } else {
              print("Seçim Yapılmadı");
            }
          },
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(243, 255, 121, 38),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Text(
              "Devam Et",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      );
}
