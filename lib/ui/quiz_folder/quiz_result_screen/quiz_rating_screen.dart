import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:learncoding/ui/constants.dart';

import '../../../services/controllers/question_controller.dart';

class AmezingScreen extends StatelessWidget {
  const AmezingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
              children:[
                 SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 35, left: 35, top: 35),
                  child: SvgPicture.asset(
                    'assets/images/claim_gift',
                  ),
                ),
                CircleAvatar(
                  backgroundColor: HexColor('#26B0FF').withOpacity(1),
                  radius: 45,
                  child: Text(
                    "${(_qnController.correctAns * 1) * 100 / 4}%",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kSecondaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'A gift for a worthy of your skills',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text('You’ve received 25xp for all',
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#2E2E2E').withOpacity(0.5),
                            fontWeight: FontWeight.normal)),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text('your hard work. Don’t spend it',
                          style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#2E2E2E').withOpacity(0.5),
                              fontWeight: FontWeight.normal)),
                    ),
                    Text('all at once.',
                        style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#2E2E2E').withOpacity(0.5),
                            fontWeight: FontWeight.normal))
                  ],
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //   return const Screenfour();
                    // }));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(42),
                    width: 208.47,
                    height: 44,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            HexColor('#26B0FF').withOpacity(1),
                            HexColor('#26B0FF'),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        'Claim Gift',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,color: Colors.red,
            child: Column(
           children: [
            Text('Like the course so far?'),
             Text('Rate it out of 5 stars'),
             RatingBar.builder(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),
                Text('Your Feedback will help us structure'),
                Text('the course better.'),
                              InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //   return const Screenfour();
                    // }));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(42),
                    width: 208.47,
                    height: 44,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            HexColor('#26B0FF').withOpacity(1),
                            HexColor('#26B0FF'),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
           ],
            ),
            ),
              ]
            )));
  }
}
