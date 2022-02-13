import 'package:coin_pro/theme.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String coinName;
  final String time;
  final String brokerName;
  final Color color;

  const ListItem({
    Key? key,
    this.imageUrl = '',
    this.title = '',
    this.coinName = '',
    this.time = '',
    this.brokerName = '',
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 16,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kBlackAccentTextColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  title,
                  style: kWhiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
