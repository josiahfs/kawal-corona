// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_corona/pages/register_screen.dart';
import 'package:get/get.dart';

class GotoScreen extends StatelessWidget {
  const GotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/splash.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: Color(0xff157FFB),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(35),
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, left: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Be aware',
                          style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff142237),
                          ),
                        ),
                        Text(
                          'Stay healty',
                          style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff142237),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          'Welcome to COVID-19 information portal.',
                          style: GoogleFonts.roboto(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 25,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'GET STARTED',
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25),
                                child: IconButton(
                                  iconSize: 50,
                                  icon: Image.asset(
                                      'assets/images/splash_next.png'),
                                  onPressed: () {
                                    Get.to(RegisterScreen());
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
