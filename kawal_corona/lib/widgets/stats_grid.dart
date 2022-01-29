import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class StatsGrid extends StatelessWidget {
  StatsGrid({Key? key, required this.globalData}) : super(key: key);
  final Map globalData;
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

  @override
  Widget build(BuildContext context) {
    String affectedCount = myFormat.format(globalData['todayCases']);
    String activeCount = myFormat.format(globalData['active']);
    String recoveredCount = myFormat.format(globalData['todayRecovered']);
    String deathCount = myFormat.format(globalData['todayDeaths']);
    String criticalCount = myFormat.format(globalData['critical']);
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                    'Affected', affectedCount.toString(), Color(0xff6045E2)),
                _buildStatCard(
                    'Active', activeCount.toString(), Color(0xff157FFB)),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard(
                    'Recovered', recoveredCount.toString(), Color(0xff2ECC71)),
                _buildStatCard(
                    'Death', deathCount.toString(), Color(0xffEC0101)),
                _buildStatCard(
                    'Serious', criticalCount.toString(), Color(0xffF7C139)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              count,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
