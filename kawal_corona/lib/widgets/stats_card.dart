import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatCard('assets/images/positive.png', '6760', 'Positive',
            Color(0xff6045E2)),
        _buildStatCard(
            'assets/images/recovered.png', '6760', 'Healed', Color(0xff6045E2)),
        _buildStatCard(
            'assets/images/death.png', '6760', 'Death', Color(0xff6045E2)),
      ],
    );
  }

  Container _buildStatCard(
      String images, String count, String title, Color color) {
    return Container(
      height: 107,
      width: 102,
      color: Color(0xffCFE3FC),
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
