import 'package:auditech_web/Telas/Principal/Perfil/States/StateProfissional.dart';
import 'package:auditech_web/Telas/Principal/componentes/components.dart';
import 'package:auditech_web/Telas/global/DefaultAppBar.dart';
import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/telas.dart';
import 'package:auditech_web/mainData.dart';

class _SPrincipal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: DefaultAppBar(
          aoPressionar: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Perfil(
                perfil: SPerfilProfissional(),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(-1, 0),
              child: Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: size.width * 0.3,
                height: size.height,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: (size.height * 0.45) - kToolbarHeight,
                      color: primary,
                      child: Image.asset("assets/images/Logo_02.jpg"),
                    ),
                    Container(
                      color: Colors.cyan[700],
                      width: double.infinity,
                      height: (size.height * 0.55),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: size.width * 0.3,
              child: Container(
                width: size.width * 0.7,
                height: size.height,
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
