import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class StatsCard extends StatelessWidget {
  StatsCard({Key? key, required this.indonesiaData}) : super(key: key);
  final Map indonesiaData;
  NumberFormat myFormat = NumberFormat.decimalPattern('en_us');

  @override
  Widget build(BuildContext context) {
    String positifCount = myFormat.format(indonesiaData['cases']);
    String healedCount = myFormat.format(indonesiaData['recovered']);
    String deathCount = myFormat.format(indonesiaData['deaths']);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatCard('assets/images/positive.png', positifCount.toString(),
            'Positive', Color(0xff6045E2)),
        _buildStatCard('assets/images/recovered.png', healedCount.toString(),
            'Healed', Color(0xff2ECC71)),
        _buildStatCard('assets/images/death.png', deathCount.toString(),
            'Death', Color(0xffFF1800)),
      ],
    );
  }

  Container _buildStatCard(
      String images, String count, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffCFE3FC),
      ),
      height: 107,
      width: 102,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            images,
            width: 32,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            count,
            style: GoogleFonts.roboto(
                fontSize: 18, fontWeight: FontWeight.bold, color: color),
          ),
          Text(title, style: GoogleFonts.roboto(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
