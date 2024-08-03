import 'package:bolbhidu/fiture_box.dart';
import 'package:bolbhidu/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bol Bhidu.ai"),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Virtual assitance picture
          Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Pallete.assistantCircleColor),
                ),
              ),
              Center(
                child: Container(
                  height: 123,
                  width: 123,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/virtualAssistant.png"))),
                ),
              )
            ],
          ),

          //chat Bubble

          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 30),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Pallete.borderColor),
                borderRadius: BorderRadius.circular(20)
                    .copyWith(topLeft: const Radius.circular(0))),
            child: Text(
              "Rar Ram, What Task Can Do For You",
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  fontSize: 25,
                  color: Pallete.mainFontColor),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.centerLeft,
            child: Text("Here Are Few Future",
                style: TextStyle(
                    fontSize: 20,
                    color: Pallete.mainFontColor,
                    fontFamily: "Cera Pro",
                    fontWeight: FontWeight.bold)),
          ),

          //sagetion Future List

          const Column(
            children: [
              FitureBoxWidge(
                color: Pallete.firstSuggestionBoxColor,
                headerText: "ChatGPT",
                discriptionText:
                    "A smarter way to Stay organized and infoermeted with ChatGPT",
              ),
               FitureBoxWidge(
                color: Pallete.secondSuggestionBoxColor,
                headerText: "Dell-E",
                discriptionText:
                    "Get inspired and stay creative with your personal assistant powered by Dell-E",
              ),
               FitureBoxWidge(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: "Smart Voice Assistant",
                discriptionText:
                    "Get best of both worlds with Voice assistant powered by Dell-E and ChatGPT",
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton( 
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){ },
        child:const Icon(Icons.mic ),
      ),
    );
  }
}
