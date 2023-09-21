import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/img/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[Logo(), LoginForm(), SwitchAccountWidget()],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(top: 100, bottom: 116),
              child: Image.asset(
                'lib/img/GistdaIcon.png',
                width: 176,
                height: 104,
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 240,
      child: Opacity(
          opacity: 1,
          child: Card(
              clipBehavior: Clip.antiAlias,
              semanticContainer: true,
              color: const Color.fromARGB(90, 9, 21, 34),
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.only(top: 20),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: SizedBox(
                          width: 300,
                          height: 50,
                          child: Row(children: <Widget>[
                            const Expanded(
                              flex:2,
                                child: CountryCodePicker(
                              onChanged: print,
                              initialSelection: 'TH',
                              favorite: ['+66', 'TH'],
                              showCountryOnly: true,
                              showOnlyCountryWhenClosed: false,
                              textStyle: TextStyle(color: Colors.white),
                              flagWidth: 20,
                              showFlag: false,
                              showFlagDialog: true,
                            )),
                            Expanded(
                              flex: 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          44), // Change this value
                                      borderSide: const BorderSide(
                                          width: 1, color: Colors.white)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          44), // Change this value
                                      borderSide: const BorderSide(
                                          width: 1, color: Colors.white)),
                                  fillColor: const Color(0xff091522),
                                  filled: true,
                                ),
                                
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          ]))),
                  Padding(
                      padding: EdgeInsetsDirectional.only(top: 20),
                      child: SizedBox(
                          width: 300,
                          height: 50,
                          child: FilledButton(
                              onPressed: null,
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xffEF5350))),
                              child: Text(
                                "Send",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )))),
                ],
              ))),
    );
  }
}

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 100,
        constraints: const BoxConstraints(maxHeight: 200),
        child: const Align(
            alignment: Alignment.bottomRight,
            child: Row(children: [
              Text(
                'Switch Account',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 20,
                  ))
            ])));
  }
}

class SwitchAccountWidget extends StatelessWidget {
  const SwitchAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight, // Align to the bottom left
      child: Padding(
        padding: EdgeInsets.only(
          top: 230,
          left: 270,
        ), // Adjust padding as needed
        child: SwitchAccount(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context);
    return const Placeholder();
  }
}
