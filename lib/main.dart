import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sliver/components/first_list.dart';
import 'package:sliver/components/first_two_container.dart';
import 'package:sliver/components/home_icon.dart';
import 'package:sliver/components/many_grid_view.dart';
import 'package:sliver/components/second_list.dart';
import 'package:sliver/constant.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshContent() async {
    // fetch some data
    // json decode data
    var data = {'Jason': 'Need A Job'};
    print('Success');

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, value) => [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(),
                ),
              ],
          body: RefreshIndicator(
            onRefresh: _refreshContent,
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FirstTwoContainer(
                                image: 'assets/firstcontainer/happiness.png',
                                title: 'Goals',
                                description: 'Earn\nRewards',
                                firstColor: kBlue,
                                secondColor: kPurple,
                                isNew: true,
                              ),
                              FirstTwoContainer(
                                image: 'assets/firstcontainer/treasure.png',
                                title: 'Voucher',
                                description: 'Available\nRewards',
                                firstColor: Color(0xFFFFCC80),
                                secondColor: Color(0xFFFB8C00),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ManyGridView(),
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 13.0, 0, 3.0),
                              child: Text(
                                'Highlights',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Flexible(
                              child: ListView(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  FirstList(image: 'special-deals.jpg'),
                                  SizedBox(width: 5.0),
                                  FirstList(image: 'mcdonald.jpg'),
                                  SizedBox(width: 5.0),
                                  FirstList(image: '50-50.jpg'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 13.0, 20.0, 3.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Promotions',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'More',
                                        style: TextStyle(
                                          color: Colors.blueAccent[700],
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 12,
                                        color: Colors.blueAccent[400],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Flexible(
                              child: ListView(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SecondList(
                                      image: 'mcdonald.jpg', text: 'Shop Now'),
                                  SizedBox(width: 5.0),
                                  SecondList(
                                      image: '50-50.jpg',
                                      text: 'Get 5 Rewards/month'),
                                  SizedBox(width: 5.0),
                                  SecondList(
                                      image: 'special-deals.jpg',
                                      text: 'Find Out More'),
                                  SizedBox(width: 5.0),
                                  Card(
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                        width: 200,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(18),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'More\nPromotions',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    size: 20,
                                                    color: Colors.blue[400],
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    size: 20,
                                                    color: Colors.blue,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    size: 20,
                                                    color: Colors.blue[800],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 13.0, 0, 3.0),
                              child: Text(
                                'Reminder',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.0),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 10.0, 20.0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        ListTile(
                                          leading: Stack(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[100],
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons
                                                      .notifications_active_rounded,
                                                  size: 35,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                          title: Text(
                                            'Low Balance',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          subtitle: Text(
                                              'Your balance is running low, reload now to enjoy your eWallet features!',
                                              style: TextStyle(
                                                color: Color(0xFF757575),
                                              )),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            TextButton(
                                              child: const Text(
                                                'RELOAD NOW',
                                                style: TextStyle(
                                                  color: Color(0xFF2962FF),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  double scrollAnimationValue(double shrinkOffset) {
    double maxScrollAllowed = maxExtent - minExtent;
    return ((maxScrollAllowed - shrinkOffset) / maxScrollAllowed)
        .clamp(0, 1)
        .toDouble();
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double visibleMainHeight = max(maxExtent - shrinkOffset, minExtent);
    final double animationVal = scrollAnimationValue(shrinkOffset);

    return Container(
      height: visibleMainHeight,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            height: visibleMainHeight * 0.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                kPurple,
                kBlue,
              ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.elliptical(40, 10),
                bottomRight: Radius.elliptical(40, 10),
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 90 * (animationVal.clamp(0.8, 1).toDouble()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeIcon(
                        icon: Icons.remove_from_queue,
                        text: 'Scan',
                        animation: animationVal),
                    HomeIcon(
                        icon: Icons.qr_code_scanner,
                        text: 'Pay',
                        animation: animationVal),
                    HomeIcon(
                        icon: Icons.phone_android,
                        text: 'Transfer',
                        animation: animationVal),
                    HomeIcon(
                        icon: Icons.credit_card_outlined,
                        text: 'TNG Card',
                        animation: animationVal),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'eWallet Balance',
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'RM 6.90',
                            style: TextStyle(
                              fontSize: 40.0 *
                                  (animationVal.clamp(0.8, 1).toDouble()),
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Opacity(
                              opacity: 1 - animationVal,
                              child: Icon(
                                Icons.add_circle_outline,
                                size: 24.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      Opacity(
                        opacity: animationVal,
                        child: CircleAvatar(
                          radius: 31,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(
                              'assets/hugh.jpg',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Opacity(
                    opacity: animationVal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey,
                                blurRadius: 3.0,
                                offset: Offset(0.0, 2.0),
                              ),
                            ],
                          ),
                          width: 160.0,
                          height: 40.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 19,
                              ),
                              Text(
                                'Reload',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Transactional History',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 2.0),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 12,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 280.0;

  @override
  double get minExtent => 200.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
