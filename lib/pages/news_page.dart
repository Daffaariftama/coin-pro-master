import 'package:coin_pro/theme.dart';
import 'package:coin_pro/widgets/carousel_item.dart';
import 'package:coin_pro/widgets/list_item.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackPrimaryColor,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: kBlackAccentTextColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_home.png',
                width: 24,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_news.png',
                width: 24,
              ),
              label: 'News'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_notif.png',
                width: 24,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_profile.png',
                width: 24,
              ),
              label: 'Profile'),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top News',
                  style: kWhiteTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: bold,
                  ),
                ),
                Image.asset(
                  'assets/ic_filter.png',
                  width: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CarouselItem(
                  imageUrl: 'assets/img_carousel1.png',
                  title:
                      'Market Wrap: Bitcoin Slides to \$35K, ETH to \$2.4K on Biden',
                  coinName: 'BTC',
                  time: '15m ago',
                  brokerName: 'CoinDesk',
                ),
                CarouselItem(
                  imageUrl: 'assets/img_carousel2.png',
                  title:
                      'Market Wrap: Bitcoin Slides to \$35K, ETH to \$2.4K on Biden',
                  coinName: 'BTC',
                  time: '15m ago',
                  brokerName: 'CoinDesk',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Recommended',
              style: kWhiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const ListItem(
            imageUrl: 'assets/img_list1.png',
            title:
                'REN Price Climbs to Record High, Benefiting From Ethereum Congestion',
            coinName: 'REN',
            time: '57m ago',
            brokerName: 'CNBC',
            color: Colors.blue,
          ),
          const ListItem(
            imageUrl: 'assets/img_list2.png',
            title: 'Binance Coin Price Update This Week',
            coinName: 'BNB',
            time: '2h ago',
            brokerName: 'Binance',
            color: Colors.yellow,
          ),
          const ListItem(
            imageUrl: 'assets/img_list3.png',
            title: '5 Advantages of Investing in The Graph',
            coinName: 'GRT',
            time: '3h ago',
            brokerName: 'CNN',
            color: Colors.purple,
          ),
          const ListItem(
            imageUrl: 'assets/img_list1.png',
            title:
                'REN Price Climbs to Record High, Benefiting From Ethereum Congestion',
            coinName: 'REN',
            time: '57m ago',
            brokerName: 'CNBC',
            color: Colors.blue,
          ),
          const ListItem(
            imageUrl: 'assets/img_list2.png',
            title: 'Binance Coin Price Update This Week',
            coinName: 'BNB',
            time: '2h ago',
            brokerName: 'Binance',
            color: Colors.yellow,
          ),
          const ListItem(
            imageUrl: 'assets/img_list3.png',
            title: '5 Advantages of Investing in The Graph',
            coinName: 'GRT',
            time: '3h ago',
            brokerName: 'CNN',
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
