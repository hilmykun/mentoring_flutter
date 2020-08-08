part of 'pages.dart';

enum Warna { kuning }

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Warna warna;

  //Type data dan variabel untuk logic calculator
  String output = "0";

  String resultOutput = "0";
  double angka1 = 0;
  double angka2 = 0;
  String operasi = "";

  //button logic
  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      resultOutput = "0";
      angka1 = 0;
      angka2 = 0;
      operasi = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "X" ||
        buttonText == "%") {
      angka1 = double.parse(output);
      operasi = buttonText;

      resultOutput = "0";
    } else if (buttonText == ".") {
      if (resultOutput.contains(".")) {
        print("Sudah desimal");
        return;
      } else {
        resultOutput = resultOutput + buttonText;
      }
    } else if (buttonText == "=") {
      angka2 = double.parse(output);

      if (operasi == "+") {
        resultOutput = (angka1 + angka2).toString();
      }
      if (operasi == "-") {
        resultOutput = (angka1 - angka2).toString();
      }
      if (operasi == "X") {
        resultOutput = (angka1 * angka2).toString();
      }
      if (operasi == "/") {
        resultOutput = (angka1 / angka2).toString();
      }
      if (operasi == "%") {
        resultOutput = (angka1 % angka2).toString();
      }

      angka1 = 0;
      angka2 = 0;
      operasi = "";
    } else {
      resultOutput = resultOutput + buttonText;
    }

    print(resultOutput);

    setState(() {
      output = double.parse(resultOutput).toStringAsFixed(0);
      operasi = operasi;
    });
  }

  //Custom button dengan angka berbeda
  Widget buildButton7(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number7.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton8(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number8.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton9(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number9.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonBagi(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton4(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number4.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton5(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number5.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton6(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number6.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonKali(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton1(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number1.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton2(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number2.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton3(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number3.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonKurang(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButton0(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: LottieBuilder.asset("assets/number0.json"),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonTitik(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonTambah(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonClear(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonMod(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  Widget buildButtonCalculate(String buttonText) {
    return Expanded(
      child: Container(
        height: 70,
        child: OutlineButton(
          shape: StadiumBorder(),
          padding: EdgeInsets.all(20.0),
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            buttonPressed(buttonText);
          },
        ),
      ),
    );
  }

  //Main Page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Calculator Sederhana",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                child: Text(output + operasi,
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                    ))),
            Expanded(
              child: Divider(),
            ),

            //Ambil Data dan hitung
            Column(children: [
              Row(children: [
                Container(child: buildButton7("7")),
                Container(child: buildButton8("8")),
                Container(child: buildButton9("9")),
                Container(child: buildButtonBagi("/"))
              ]),
              Row(children: [
                Container(child: buildButton4("4")),
                Container(child: buildButton5("5")),
                Container(child: buildButton6("6")),
                Container(child: buildButtonKali("X"))
              ]),
              Row(children: [
                Container(child: buildButton1("1")),
                Container(child: buildButton2("2")),
                Container(child: buildButton3("3")),
                Container(child: buildButtonKurang("-"))
              ]),
              Row(children: [
                Container(child: buildButtonTitik(".")),
                Container(child: buildButton0("0")),
                Container(child: buildButtonMod("%")),
                Container(child: buildButtonTambah("+"))
              ]),
              Row(children: [
                Container(child: buildButtonClear("CLEAR")),
                Container(child: buildButtonCalculate("=")),
              ])
            ])
          ],
        )));
  }
}
