import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatCard('Affected', '336.851', Colors.deepPurple),
                _buildStatCard('Death', '9.620', Colors.red.shade600),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatCard('Recovered', '17.997', Colors.green),
                _buildStatCard('Active', '301.251', Color(0xff157FFB)),
                _buildStatCard('Serious', '8.702', Color(0xffF7C139)),
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
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
