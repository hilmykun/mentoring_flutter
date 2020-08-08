part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData();
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
            child: ListView(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
              height: 300,
              child: LottieBuilder.asset("assets/aquarium.json"),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 16),
              child: Text(
                "Cupangesia",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Text(
              "Tempat dimana anda membeli ikan cupang \nfavorit",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            Container(
              width: 250,
              height: 46,
              margin: EdgeInsets.only(top: 60, bottom: 20),
              child: RaisedButton(
                color: Colors.blue[200],
                  shape: StadiumBorder(),
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {
                    Get.off(LoginPage());
                  }),
            ),
                ],
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
