import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter/material.dart';
import '../../helpers/separate.dart';
// import 'package:google_fonts/google_fonts.dart';

class StatusHome extends StatefulWidget {
  const StatusHome({super.key});

  @override
  StatusHomeState createState() => StatusHomeState();
}

class StatusHomeState extends State<StatusHome> {
  double widthScreen = 0;
  double heightScreen = 0;

  @override
  Widget build(context) {
    sizesScreen(context);

    return Container(
      padding: const EdgeInsets.only(top: 4),
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(10, 10, 10, .8),
          gradient: LinearGradient(
              colors: [Color.fromRGBO(20, 25, 25, 1), Colors.black])),
      width: widthScreen,
      height: heightScreen,
      child: statusItems(),
    );
  }

  Widget statusItems() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      checkedStatus(),
      Separated(0, 30),
      AppsHome(heightScreen)
    ]);
  }

  Widget checkedStatus() {
    return Container(
        width: widthScreen / 1,
        height: 300,
        alignment: Alignment.center,
        // decoration: BoxDecoration(color: Colors.blue),
        child: Column(children: [
          imageStatus(),
          Separated(0, 10),
          textForButtonDown(),
          Separated(0, 40),
          buttonStatusChecked(),
          // Separated(0, 20),
          descriptionStatus()
        ]));
  }

  Widget textForButtonDown() {
    return const Text(
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
        child: Icon(Icons.verified_user_outlined,
            size: 50, color: Colors.grey[300]));
  }

  Widget buttonStatusChecked() {
    return BounceInUp(
        // from: 6,
        child: Container(
            width: 180,
            height: 35,
            margin: const EdgeInsets.only(top: 35),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green[800],
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "RUN SMART SCAN",
              style: TextStyle(
                fontFamily: "ubuntu",
                color: Colors.white,
              ),
            )));
  }

  Widget descriptionStatus() {
    return Container(
        padding: const EdgeInsets.only(left: 20, right: 4),
        margin: const EdgeInsets.only(top: 16),
        child: Text(
            "Scan your device or all kinds of security, privacy, and perfomance issues.",
            style: TextStyle(
                fontFamily: "arial", color: Colors.grey[500], fontSize: 12)));
  }

  void sizesScreen(context) {
    setState(() {
      widthScreen = MediaQuery.of(context).size.width -85;
      heightScreen = MediaQuery.of(context).size.height;
    });
  }
}

class AppsHome extends StatelessWidget {
  double screenHeight;

  AppsHome(this.screenHeight, {super.key});

  @override
  Widget build(context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: app("Battery Saver", Icons.battery_charging_full)),
                Expanded(child: app("Anti Track", Icons.pattern)),
                Expanded(child: app("Performance", Icons.speed)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: app("Secure vpn", Icons.vpn_key)),
                Expanded(child: app("Secure Browser", Icons.vpn_lock)),
                Expanded(child: app("Internet security", Icons.wifi_lock)),
              ],
            )
          ],
        ));
    // decoration: BoxDecoration(color: Colors.grey[200]));
  }

  Widget app(String title, dynamic icon) {
    return BounceInDown(

        // from: 2.5,
        // duration: const Duration(seconds: 2),
        child: Container(
           // width: 180,
            height: 90,
            margin: const EdgeInsets.all(5),
           // padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(icon, size: 20, color: Colors.white),
                        Separated(0, 4),
                       Text(title,textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: "ubuntu", color: Colors.white, fontSize: 14,
                ),
              )
            ])));
  }
}
