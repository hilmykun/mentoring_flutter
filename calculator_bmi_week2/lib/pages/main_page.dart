part of 'pages.dart';
//By Hilmy mentoring flutter batch 2
//Nilai enumeric 0
enum Gender {
  male,
  female,
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Input Controller
  final TextEditingController ageController = new TextEditingController();
  final TextEditingController heightController = new TextEditingController();
  final TextEditingController weightController = new TextEditingController();

  //Variabel
  String bmiResult = "-";
  String status = "-";
  String age = "";
  String gender = "";

  //Widget untuk custom field umur/age
  Widget customfield(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextField(
        keyboardType: TextInputType.number,
        controller: controlName,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Your Age",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field tinggi/height
  Widget customFieldHeight(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextField(
        keyboardType: TextInputType.number,
        controller: controlName,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.bubble_chart),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Height",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Widget untuk custom field berat/weight
  Widget customFieldWeight(String placeholdername, controlName) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: new TextField(
        keyboardType: TextInputType.number,
        controller: controlName,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.show_chart),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10),
            ),
          ),
          labelText: "Weight",
          hintText: placeholdername,
        ),
      ),
    );
  }

  //Enumeric variabel gender untuk pilih gender ketika ditekan
  Gender pilihGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar awal
      appBar: AppBar(
        title: Center(
          child: Text(
            "Calculator BMI Sederhana",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Center(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Pilih Gender",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              //Untuk menampilkan gambar pria/wanita dan ketika salah satu ditekan akan muncul warna
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Card(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              pilihGender = Gender.male;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: pilihGender == Gender.male
                                  ? activeColor
                                  : inActiveColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 100,
                            child: LottieBuilder.network(
                              "https://assets5.lottiefiles.com/packages/lf20_rbqdVs.json",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: Container(
                      child: Card(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              pilihGender = Gender.female;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: pilihGender == Gender.female
                                  ? activeColor
                                  : inActiveColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 100,
                            child: LottieBuilder.network(
                              "https://assets5.lottiefiles.com/packages/lf20_15mU8Y.json",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: <Widget>[
                  customfield('Age', ageController),
                  customFieldHeight('Height(Cm)', heightController),
                  customFieldWeight('Weight(Kg)', weightController),
                  RaisedButton(
                    color: buttonColor,
                      child: Text("Hitung",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      onPressed: () {
                        setState(() {
                          //kondisi jika sudah memberikan nilai pada controller
                          var Weight = double.parse(weightController.text);
                          var Height = double.parse(heightController.text);
                          var calculateBMI =
                              (Weight) / ((Height / 100) * (Height / 100));

                          if (calculateBMI < 18.9) {
                            status =
                                "Beratmu dibawah standard, ayo tingkatkan lagi";
                          } else if (calculateBMI < 25.0) {
                            status = "Beratmu Ideal Yeayyy!";
                          } else if (calculateBMI < 30.0) {
                            status =
                                "Beratmu mulai diatas normal, ayo berolahraga";
                          } else {
                            status = "Beratmu terlalu berlebih! ";
                          }
                          bmiResult = calculateBMI.toInt().toString();
                          age = ageController.text;

                          //menampilkan alert dialog
                          showDialog(
                            context: context,
                            builder: (_) => AssetGiffyDialog(
                              image: Image.asset("assets/congratulations.jpeg"),
                              title: Text(
                                "Calculate",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              description: Text(
                                "Umur Kamu = $age \n BMi Kamu adalah = $bmiResult \n Status = $status",
                                textAlign: TextAlign.center,
                              ),
                              onOkButtonPressed: () {
                                Get.back();
                              },
                              onCancelButtonPressed: () {
                                Get.back();
                              },
                            ),
                          );
                        });
                      }),
                  SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
