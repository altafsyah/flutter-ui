import 'package:flutter/material.dart';
import './const.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              FittedBox(child: Image.asset('assets/Splash.png', fit: BoxFit.fill,)),
              Center(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white10,
                        whiteColor,
                        whiteColor
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 300,),
                      Spacer(flex: 2,),
                      Text(
                        'Find Your \nFavorite Events \nHere',
                        style: GoogleFonts.playfairDisplay().copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: brownColor
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 2,)
                      ,InkWell(
                        onTap: (){
                          // Navigator();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 78),
                          padding: EdgeInsets.symmetric(horizontal: 49, vertical: 13),
                          // width: ,
                          decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.montserrat().copyWith(
                              fontSize: 20,
                              color: Colors.white
                            )
                          ),
                        ),
                      ),
                      Spacer(flex: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 30),
                            width: 18,
                            height: 8,
                            decoration: BoxDecoration(
                              color: orangeColor,
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(  
                                children: [
                                  Text(
                                    'Have an account?',
                                    style: GoogleFonts.montserrat().copyWith(
                                      fontSize: 12,
                                      color: brownColor,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: brownColor,
                                    size: 14,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              )

            ],
          )
        )
      );
  }
}