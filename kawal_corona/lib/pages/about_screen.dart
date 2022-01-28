import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_corona/controller/authentication_controller.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                AuthController.instance.logout();
              },
              child: Container(
                width: 220,
                height: 51,
                decoration: BoxDecoration(
                    color: Color(0xff157FFB),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Center(
                  child: Text(
                    'Logout',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffCFE3FC)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
