import 'package:coach_ui/constants.dart';
import 'package:coach_ui/models/coach_brain.dart';
import 'package:coach_ui/widgets/coach_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CoachBrain coachBrain = CoachBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const FlutterLogo(
          size: 25.0,
          textColor: Colors.green,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100.0,
                color: Colors.white,
                child: const Text(
                  'Get coaching',
                  style: kTitleTextStyle,
                ),
              ),
              Container(
                alignment: const Alignment(0.0, -0.40),
                margin: const EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: kContainerDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 45.0, 5.0, 10.0),
                          child: Text(
                            '206',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('Buy more',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          GridView.builder(
            itemBuilder: (context, index) => CoachCard(
              name: coachBrain.getCoachName(index),
              status: coachBrain.getCoachStatus(index),
              cardIndex: coachBrain.getCoachIndex(index),
              imageURL: coachBrain.getCoachImage(index),
            ),
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
            ),
            itemCount: coachBrain.getLength(),
          )
        ],
      ),
    );
  }
}
