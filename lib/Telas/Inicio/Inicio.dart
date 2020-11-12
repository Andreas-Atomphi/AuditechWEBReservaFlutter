import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/Inicio/Componentes/components.dart';
import 'package:auditech_web/Telas/global/CustomCheckBox.dart';
import 'package:auditech_web/Telas/global/LinkButton.dart';
import 'package:auditech_web/mainData.dart';
import 'Componentes/TextField.dart';

class _SInicio extends State<Inicio> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    void entrar() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: mainRoutes['principal'],
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            //  Cria o lado esquerdo da página que mostra a logo
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: primary,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image.asset(
                    "assets/images/Logo_02.jpg",
                    width: 500,
                    height: 500,
                  ),
                  Spacer(
                    flex: 10,
                  ),
                ],
              ),
            ),
            //  Lado direito contendo os inputs para login
            Positioned(
              left: MediaQuery.of(context).size.width * 0.4,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(250),
                    bottomLeft: Radius.circular(250),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3),
                      spreadRadius: 15,
                      blurRadius: 5,
                    )
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Spacer(
                      flex: 8,
                    ),
                    Align(
                      alignment: Alignment(-0.65, 0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: "OpenSans",
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    TextFieldLogin("Digite seu código", false, TipoEntrada.COD),
                    SizedBox(
                      height: 20,
                    ),
                    TextFieldLogin("Digite sua senha", true, TipoEntrada.PSSWD),
                    Spacer(
                      flex: 1,
                    ),
                    AlignedButton(
                      alignment: Alignment(0.65, 0),
                      color: Colors.lightBlue[700],
                      textColor: Colors.white,
                      padding: EdgeInsets.all(15),
                      text: "Entrar",
                      aoPressionar: entrar,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment(0.65, 0),
                      child: LinkButton(
                        text: "Esqueci minha senha",
                        aoPressionar: () {},
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.65, 0),
                      child: SizedBox(
                        width: 250,
                        child: StatelessCheckBox(
                          text: "Lembrar de mim",
                          checked: _rememberMe,
                          onChanged: (ca) {
                            setState(
                              () {
                                _rememberMe = ca;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() {
    return _SInicio();
  }
}
