part of 'pages.dart';

class MainPage extends StatelessWidget {
  MainPage({@required this.username, @required this.password});

  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("Username anda = $username")),
          Center(child: Text("Password anda = $password")),
          RaisedButton(
              child: Text("Sign Out"),
              onPressed: () {
                Get.back();
              })
        ],
      ),
    );
  }
}
