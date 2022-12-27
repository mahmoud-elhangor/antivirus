import 'package:animate_do/animate_do.dart';
import 'package:fire_antivirus/helpers/separate.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class StatusHome extends StatefulWidget {
  StatusHomeState createState() => new StatusHomeState();
}

class StatusHomeState extends State<StatusHome> {
  double widthScreen = 0;
  double heightScreen = 0;

  Widget build(context) {
    this.sizesScreen(context);

    return Container(
      padding: EdgeInsets.only(top: 4),
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          color: Color.fromRGBO(10, 10, 10, .8),
          gradient: LinearGradient(
              colors: [Color.fromRGBO(20, 25, 25, 1), Colors.black])),
      width: this.widthScreen,
      height: this.heightScreen,
      child: this.statusItems(),
    );
  }

  Widget statusItems() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      this.checkedStatus(),
      Separated(0, 30),
      AppsHome(this.heightScreen)
    ]);
  }

  Widget checkedStatus() {
    return Container(
        width: this.widthScreen / 1,
        height: 300,
        alignment: Alignment.center,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Column(children: [
          this.imageStatus(),
          Separated(0, 10),
          this.textForButtonDown(),
          Separated(0, 40),
          this.buttonStatusChecked(),
          // Separated(0, 20),
          this.descriptionStatus()
        ]));
  }

  Widget textForButtonDown() {
    return Text(
      "You're protected",
      style: TextStyle(
        fontFamily: "ubuntu",
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  ZoomIn imageStatus() {
    return ZoomIn(
        from: .9,
        child: Icon(Icons.verified_user_outlined,
            size: 100, color: Colors.grey[300]));
  }

  Widget buttonStatusChecked() {
    return BounceInUp(
        from: 6,
        child: Container(
            width: 180,
            height: 35,
            margin: EdgeInsets.only(top: 35),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(8)),
            child: Text(
              "RUN SMART SCAN",
              style: TextStyle(
                fontFamily: "ubuntu",
                color: Colors.white,
              ),
            )));
  }

  Widget descriptionStatus() {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 4),
        margin: EdgeInsets.only(top: 16),
        child: Text(
            "Scan your device or all kinds of security, privacy, and perfomance issues.",
            style: TextStyle(
                fontFamily: "arial", color: Colors.grey[500], fontSize: 12)));
  }

  void sizesScreen(context) {
    setState(() {
      this.widthScreen = MediaQuery.of(context).size.width - 79;
      this.heightScreen = MediaQuery.of(context).size.height;
    });
  }
}

class AppsHome extends StatelessWidget {
  double screenHeight;

  AppsHome(this.screenHeight);

  Widget build(context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                this.app("Battery Saver", Icons.battery_charging_full),
                this.app("Anti Track", Icons.pattern),
                this.app("Perfomance", Icons.speed),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                this.app("Secure vpn", Icons.vpn_key),
                this.app("\t\t\t\t\t\t\tSecure \tBrowser", Icons.vpn_lock),
                this.app("\tInternet security", Icons.wifi_lock),
              ],
            )
          ],
        ));
    // decoration: BoxDecoration(color: Colors.grey[200]));
  }

  Widget app(String title, dynamic icon) {
    return BounceInDown(
        from: 2.5,
        duration: Duration(seconds: 2),
        child: Container(
            width: 200,
            height: 80,
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(icon, size: 35, color: Colors.white),
              Separated(0, 4),
              Text(
                title,
                style: TextStyle(
                  fontFamily: "ubuntu",
                  color: Colors.white,
                  fontSize: 13,
                ),
              )
            ])));
  }
}
