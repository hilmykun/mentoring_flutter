part of 'pages.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 250,
                  child: LottieBuilder.asset("assets/fish.json"),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Username",
                      hintText: "Username"),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password",
                      hintText: "Password"),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Retype Password",
                      hintText: "Retype Password"),
                ),
                SizedBox(height: 20),
                RaisedButton(
                    elevation: 0,
                    color: Colors.blue[200],
                    shape: StadiumBorder(),
                    child: Text(
                      "Back To Login",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    onPressed: () {
                      Get.back();
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
