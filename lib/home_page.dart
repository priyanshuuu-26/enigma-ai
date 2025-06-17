import 'package:enigma/feature_box.dart';
import 'package:enigma/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enigma'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))
                ),
              )
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 40).copyWith(top: 30),
              decoration: BoxDecoration(
                border: Border.all(color: Pallete.mainFontColor,),
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.zero
                )                
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text('Good Morning ! I am Enigma your virtual assistant.',
                style: TextStyle(color: Pallete.mainFontColor,
                fontSize: 20,
                fontFamily: 'Cera Pro',
                ),
                ),
              )
          ),


          //suggestion options
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: const Text('Here are few suggestions',style: TextStyle(
              fontFamily: 'Cera Pro',
              fontSize: 18,
              color: Pallete.mainFontColor,
              fontWeight: FontWeight.bold,
            ),),
          ),

          //features
          const Column(
            children: [
              FeatureBox(color: Pallete.firstSuggestionBoxColor,
              headerText: 'ChatGPT',
              descriptionText: 'Chat with the AI model to get answers to your questions.',
              ),
            FeatureBox(color: Pallete.secondSuggestionBoxColor,
              headerText: 'Dall-E',
              descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E.',
              ),
              FeatureBox(color: Pallete.thirdSuggestionBoxColor,
              headerText: 'Smart Voice Assistant',
              descriptionText: 'Get the best of both worlds with a voice assistant powered by ChatGPT and Dall-E.',
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Pallete.firstSuggestionBoxColor,
        child: const Icon(Icons.mic,
        ),
      ),
    );
  }
}