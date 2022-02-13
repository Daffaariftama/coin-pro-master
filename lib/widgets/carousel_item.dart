import 'package:coin_pro/theme.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String coinName;
  final String time;
  final String brokerName;
  final Color color;

  const CarouselItem({
    Key? key,
    this.imageUrl = '',
    this.time = '',
    this.title = '',
    this.coinName = '',
    this.brokerName = '',
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 196,
      margin: const EdgeInsets.only(
        left: 24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: const ColorFilter.srgbToLinearGamma(),
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: kWhiteTextStyle.copyWith(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                coinName,
                style: kGreyTextStyle,
              ),
              const SizedBox(
                width: 24,
              ),
              Text(
                time,
                style: kGreyTextStyle,
              ),
              const SizedBox(
                width: 24,
              ),
              Text(
                brokerName,
                style: kGreyTextStyle,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
