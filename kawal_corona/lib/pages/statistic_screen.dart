import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kawal_corona/widgets/stats_card.dart';
import 'package:kawal_corona/widgets/stats_grid.dart';
import 'package:http/http.dart' as http;

class StatisticScreen extends StatefulWidget {
  StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  Map? globalData;
  fetchGlobalData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    setState(() {
      globalData = json.decode(response.body);
    });
  }

  Map? indonesiaData;
  fetchIndonesiaData() async {
    http.Response response = await http
        .get(Uri.parse('https://disease.sh/v3/covid-19/countries/Indonesia'));
    setState(() {
      indonesiaData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchIndonesiaData();
    fetchGlobalData();
    super.initState;
  }

  @override
  Widget build(BuildContext context) {
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
                      'Statistic',
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    ' Global Cases Today',
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
              globalData == null
                  ? Center(
                      child: Container(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator()))
                  : StatsGrid(globalData: globalData!),
              SizedBox(
                height: 39,
              ),
              Row(
                children: [
                  Text(
                    ' Indonesia\'s Total Cases',
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
              globalData == null
                  ? Center(
                      child: Container(
                          width: 100,
                          height: 100,
                          child: CircularProgressIndicator()))
                  : StatsCard(indonesiaData: indonesiaData!),
              SizedBox(
                height: 44,
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
                              'assets/images/banner2.png',
                              width: 154,
                              height: 131,
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
                height: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
