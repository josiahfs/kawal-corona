import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends GetxController {
  bool isDarkMode = true;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    if (isDarkMode) {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }
    update();
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              SizedBox(
                height: 41,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Text(
                      'Hello, ',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Fighters!',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    GetBuilder<ThemeController>(
                      builder: (controller) => IconButton(
                        icon: Icon(controller.isDarkMode
                            ? Icons.dark_mode
                            : Icons.light_mode),
                        onPressed: () {
                          controller.toggleDarkMode();
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 373,
                height: 141,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    color: Color(0xff157FFB)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/banner1.png',
                              width: 221,
                              height: 129,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 17, bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Are you feeling sick ?',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'If you feel sick with symptoms of\nCovid 19 please call immediately for help.',
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              child: Container(
                                width: 112,
                                height: 31,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 11),
                                      child: Icon(
                                        Icons.call,
                                        color: Color(0xff157FFB),
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Text(
                                      'Call Now',
                                      style: GoogleFonts.roboto(
                                        color: Color(0xff157FFB),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    ' COVID - 19 ',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEC0101)),
                  ),
                  Text(
                    'Symptoms',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/headache.png',
                    width: 89,
                  ),
                  Image.asset(
                    'assets/images/cough.png',
                    width: 89,
                  ),
                  Image.asset(
                    'assets/images/fever.png',
                    width: 89,
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                ' Preventions',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/wash.png',
                        width: 71,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Wash Hands',
                        style: GoogleFonts.roboto(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/mask.png',
                        width: 71,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Wear Mask',
                        style: GoogleFonts.roboto(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/clean.png',
                        width: 71,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Clean Disinfect',
                        style: GoogleFonts.roboto(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Center(
                child: Text(
                  'COVID - 19 Screening',
                  style: GoogleFonts.roboto(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(right: 7),
                  child: Image.asset('assets/images/screening.png'),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
