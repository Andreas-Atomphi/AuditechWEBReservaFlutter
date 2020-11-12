import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/telas.dart';
import 'package:auditech_web/mainData.dart';

class _SPrincipal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          title: Align(
            alignment: Alignment(-0.9, 0),
            child: Text("Auditech"),
          ),
          actions: [
            Container(
              width: kToolbarHeight,
              height: kToolbarHeight,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: Icon(
                Icons.person,
                size: 35,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(-1, 0),
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.45,
                      color: primary,
                      child: Image.asset("assets/images/Logo_02.jpg"),
                    ),
                    Container(
                      color: Colors.cyan[700],
                      height: MediaQuery.of(context).size.height * 0.474,
                      width: double.infinity,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height,
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  routes: insideRoutes,
                  initialRoute: 'pacientes',
                  home: Pacientes(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() {
    return _SPrincipal();
  }
}
