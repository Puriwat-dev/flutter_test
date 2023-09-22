import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const value = '';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/img/bg.png'),
          ),
        ),
        child: const Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: <Widget>[
                Logo(),
                OtpForm(),
              ],
            )));
  }
}

class PinInput extends StatelessWidget {
  const PinInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68,
                    width: 50,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF62E02)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: value.length == 1
                                ? BorderSide(color: Color(0xffB1B1B1))
                                : BorderSide(color: Color(0xffB1B1B1)),
                          )),
                    ),
                  ),
                  SizedBox(
                      height: 68,
                      width: 50,
                      child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.isEmpty) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF62E02)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: value.length == 1
                                    ? BorderSide(color: Color(0xffB1B1B1))
                                    : BorderSide(color: Color(0xffB1B1B1)),
                              )))),
                  SizedBox(
                      height: 68,
                      width: 50,
                      child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.isEmpty) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF62E02)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: value.length == 1
                                    ? BorderSide(color: Color(0xffB1B1B1))
                                    : BorderSide(color: Color(0xffB1B1B1)),
                              )))),
                  SizedBox(
                      height: 68,
                      width: 50,
                      child: TextField(
                          onChanged: (value) {
                            if (value.isEmpty) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffF62E02)),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: value.length == 1
                                    ? BorderSide(color: Color(0xffB1B1B1))
                                    : BorderSide(color: Color(0xffB1B1B1)),
                              )))),
                ],
              ),
            )));
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

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 300,
      child: Card(
        clipBehavior: Clip.antiAlias,
        semanticContainer: true,
        color: const Color.fromARGB(90, 9, 21, 34),
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20, end: 100),
              child: Text(
                'Verificaiton',
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
                padding: EdgeInsetsDirectional.only(top: 20),
                child: Text(
                  'Enter your OTP sent to 08x-xxx-xxxx',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffB1B1B1),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                )),
            PinInput(),
            SendButton(),

          ],
        ),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsetsDirectional.only(top: 20),
        child: SizedBox(
            width: 300,
            height: 50,
            child: FilledButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffEF5350))),
                child: Text(
                  "Send",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))));
  }
}
