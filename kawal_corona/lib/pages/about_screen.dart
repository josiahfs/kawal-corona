import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_corona/controller/authentication_controller.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset(
                  'assets/images/about.png',
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Josiah Farrel Suwito',
                  style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/gmail.png',
                        width: 45,
                        height: 39.5,
                      ),
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/linkedin.png',
                        width: 45,
                        height: 40,
                      ),
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/github.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Text(
                  'Porfolio',
                  style: GoogleFonts.roboto(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: 300,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Color(0xff157FFB)),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Color(0xffCFE3FC),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/flutter.png',
                              width: 30,
                              height: 39.55,
                            ),
                            Text(
                              'Flutter',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/figma.png',
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              'Figma',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/git.png',
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              'Git',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
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
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
