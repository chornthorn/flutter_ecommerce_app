import 'package:flutter/material.dart';
import 'package:flutter_flavor/views/widgets/default_button_custom.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> _onboardData = [
    {
      "title": "View product 360 degrees",
      "image": 'assets/images/onboard_01.svg',
      "desc": "You can see the product with all angles, true and convenient"
    },
    {
      "title": "Find products easily",
      "image": 'assets/images/onboard_02.svg',
      "desc":
          "You just need to take a photo or upload and we will find similar products for you."
    },
    {
      "title": "Payment is easy",
      "image": 'assets/images/onboard_03.svg',
      "desc":
          "You just need to take a photo or upload and we will find similar products for you."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: buildSection1(),
            ),
            Expanded(
              flex: 2,
              child: buildSection2(context),
            )
          ],
        ),
      ),
    );
  }

  PageView buildSection1() {
    return PageView.builder(
      itemCount: _onboardData.length,
      onPageChanged: (value) {
        setState(() {
          currentPage = value;
        });
      },
      itemBuilder: (context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Spacer(),
              Expanded(
                flex: 10,
                child: SvgPicture.asset(_onboardData[index]['image']),
              ),
              Spacer(flex: 2),
              Text(
                _onboardData[index]['title'],
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 20),
              Text(
                _onboardData[index]['desc'],
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }

  Padding buildSection2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Spacer(
            flex: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => buildDot(index: index),
            ),
          ),
          Spacer(flex: 2),
          DefaultButton(
            label: 'Get Started!',
            onPressed: () {
              Navigator.of(context).pushNamed<void>('/sign_up');
            },
          ),
          Spacer(),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(context).primaryColor
            : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
