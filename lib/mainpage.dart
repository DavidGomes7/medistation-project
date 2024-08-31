import 'dart:async';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';
import 'navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  final int _duration = 172;
  final CountDownController _controller = CountDownController();
  final player = AudioPlayer();
  String formatDuration(Duration d) {
    final minutes = d.inMinutes.remainder(60);
    final seconds = d.inSeconds.remainder(60);
    return "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
  }

  void handlePlayPause() {
    if(player.playing) {
      player.pause();
    } else {
      player.play();
    }
  }


/*
  void handleSeek(double value) {
    player.seek{Duration(seconds: value.toInt())};
  }*/

  Duration position = Duration.zero;
  Duration duration = Duration.zero;


  @override
  void initState() {
    super.initState();
    player.setUrl('https://archive.org/download/calm-day-wkmllb/Mellow%20Blush%20%26%20Light%20Blending%20In%20-%20Calm%20Day.mp3');
    //calm day: https://archive.org/download/calm-day-wkmllb/Mellow%20Blush%20%26%20Light%20Blending%20In%20-%20Calm%20Day.mp3
    //calm ocean breeze: https://archive.org/download/calm-ocean-breeze-calm-ocean-love-wkxxnr/girl.mask%40yahoo.jp%20-%20calm%20ocean%20breeze%20-%20calm%20ocean%20love%20-%2001%20calm%20ocean%20breeze.mp3
    //example: https://download.samplelib.com/mp3/sample-15s.mp3
    //meditation guide: https://archive.org/download/relaxrx/Relax%20Rx.mp3

    

    // Listen to position updates
    player.positionStream.listen((p) {
      setState(() => position = p);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Center(child: Text(widget.title),),

        //backgroundColor: Colors.lightBlue,
    
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: 200,
              //color: Colors.red,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Breathe and Relax...",
                  style: TextStyle(fontSize: 20)
                ),
              )   
            ),
            CircularCountDownTimer(
          // Countdown duration in seconds
          duration: _duration,
          // Countdown initial elapsed Duration in seconds
          initialDuration: 0,
          // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer
          controller: _controller,
          // Width of the Countdown widget
          width: MediaQuery.of(context).size.width / 2,
          // Height of the Countdown widget
          height: MediaQuery.of(context).size.height / 2,
          // Ring color for Countdown widget
          ringColor: Colors.grey[300]!,
          // Ring gradient for Countdown widget
          ringGradient: null,
          // Filling color for Countdown widget
          fillColor: Colors.lightBlue[100]!,
          // Filling gradient for Countdown widget
          fillGradient: null,
          // Background color for Countdown widget
          backgroundColor: Colors.lightBlue[500]!,
          // Background gradient for Countdown widget
          backgroundGradient: null,
          //Border thickness of the Countdown ring
          strokeWidth: 20.0,
          // Begin and end contours with a flat edge and no extension.
          strokeCap: StrokeCap.round,
          // Text style for countdown text
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          // Format for the countdown text
          textFormat: CountdownTextFormat.S,
          // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
          isReverse: false,
          // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
          isReverseAnimation: false,
          // Handles visibility of the countdown text
          isTimerTextShown: true,
          // Handles the time start
          autoStart: false,
          // This Callback will execute when the Countdown Starts.
          onStart: () {
            // here, do whatever you want
            debugPrint('Countdown Started');
          },
          // This Callback will execute when the Countdown Ends.
          onComplete: () {
            // here, do whatever you want
            debugPrint('Countdown Ended');
          },
        )

          ],
          
        )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
            ),
          _button(title: "Start", onPressed: () { _controller.start(); player.play();}),
          const SizedBox(
            width: 10,
          ),
          _button(title: "Pause", onPressed: () { _controller.pause(); player.pause();}),
          const SizedBox(
            width: 10,
          ),
          _button(title: "Resume", onPressed: () { _controller.resume(); player.play();}),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Restart",
            onPressed: () => _controller.restart(duration: _duration)
          )
        ],
      )
    );
  }

  


  Widget _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
        ),
        onPressed: onPressed,
        ),

    );
  }
  
  void playsong() {

  }



/*
  // Variables
  int timeLeft = 60;

  //String timeleftString = timeLeft.toString();

  // Timer method
  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeLeft--;  
       
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            Text(
              timeLeft.toString(),
              style: TextStyle(fontSize: 70),
              ),
            MaterialButton(
              onPressed: _startCountDown,
              color: Colors.blue,
              child: Text(
                'Começar Meditação',
                style: TextStyle(color: Colors.white),
                ),
            ),
          ],
        ),
      ),
    );
  }*/
}


