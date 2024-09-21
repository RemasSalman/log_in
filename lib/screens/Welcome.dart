import 'package:flutter/material.dart';
import 'package:my_login_page/screens/login.dart';
import 'package:my_login_page/widgets/CustomButton.dart';
import 'package:my_login_page/widgets/customScaffold.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customScaffold(
      child: Column(
        
      children: [
          Flexible(
            flex: 8,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(top: 180, bottom: 30.0),
              child: const Text(
                ' Welcome to the Heart of Riyadh !',
                style: TextStyle(
                  fontSize: 38.0,
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 254, 251, 253),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(top: 20.0, bottom: 190.0),
            child: const Text(
              '   This is Your Adventure Guide ,\n   Your Destination for Discovery !',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 249, 245, 247),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: CustomButton(
                      buttonText: 'Sign up',
                      backgroundColor: Colors.transparent,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: const CustomButton(
                        buttonText: 'Log in',
                        backgroundColor: Colors.white,
                        textColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}