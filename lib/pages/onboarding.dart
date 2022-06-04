import 'package:flutter/material.dart';
import 'package:moreshop_app/onboarding-data.dart';
import 'package:moreshop_app/template.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndikator(index){
    return AnimatedContainer(
      margin: EdgeInsets.only(
        right: 12
      ),
      duration: Duration(milliseconds: 15),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: currentIndex == index ? primaryColor : backgroundColor2, shape: BoxShape.circle
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value){
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: onBoardingList.length,
                  itemBuilder: ((context, index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 80,
                          left: defaultMargin,
                          right: defaultMargin
                        ),
                        child: Text(onBoardingList[index].title, style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                          height: 1.5
                        ),
                        textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 50
                        ),
                        child: Image.asset(onBoardingList[index].image, 
                        width: 210,
                        height: 201,),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          left: defaultMargin,
                          right: defaultMargin
                        ),
                        child: Text(onBoardingList[index].subtitle, style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium
                        ),
                        textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ))
                ),
              ),
              Expanded(
                flex: currentIndex == onBoardingList.length -1 ? 3 : 2,
                child: Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      currentIndex == onBoardingList.length - 1 ? Column(
                        children: [
                          Center(
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/login-page');
                                }, 
                                child: Text('Mulai Berbelanja', style: backgroundTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: semiBold
                                ),)
                              ),
                            ),
                          ),
                        ],
                      ) :
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/login-page');
                            }, 
                            child: Text('Masuk', style: primaryTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold
                            ),)
                          ),
                      Row(
                        children: List.generate(onBoardingList.length, (index) => dotIndikator(index)),
                      ),
                      Container(
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextButton(
                          onPressed: (){
                            _pageController.nextPage(duration: Duration(
                              milliseconds: 400
                            ), curve: Curves.easeInOut);
                          },
                          child: Text('Lanjut', style: backgroundTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: semiBold
                          ),),
                        ),
                      ),
                        ],
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}