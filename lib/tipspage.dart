  import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'navbar.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


class TipsPage extends StatefulWidget {
  TipsPage({Key? key}) : super(key: key);

  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text('MediStation           ', style: TextStyle(color: Colors.white),),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
           child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Text(
                  "About Meditation",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 200,
                width: 300,
                child: Column(
                  children: [
                    Text("What Is Meditation?", style: TextStyle(fontSize: 18),),
                    const  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Meditation is a mental practice that promotes relaxation, builds internal energy,"
                        " and fosters a deep state of serenity. It involves focusing your mind to achieve a"
                        " mentally clear and emotionally stable state. Although it originates from spiritual "
                        " traditions, today, meditation is often practiced for various health and wellness purposes."
                        "  The meditation we guide and teach on Mind Oasis is completely secular.",
                        style: TextStyle(fontSize: 13),
                    ),
                  ),
                  ],
                ), 
              ),
              Padding(padding: EdgeInsets.all(10)),
              //Divider(height: 30, thickness: 0,),
              Container(
                color: Colors.lightBlue[50],
                height: 200,
                width: 300,
                child: Column(
                    children: [
                      Text("Why Is Meditation Important?", style: TextStyle(fontSize: 18),),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "With our lives often dominated by digital distractions, deadlines,"
                          " and constant multi-tasking, meditation provides a much-needed respite,"
                          " offering a slew of health benefits. Regular meditation can reduce stress,"
                          " control anxiety, enhance self-awareness, lengthen attention span, and even "
                          "improve sleep. It’s a journey of self-discovery and an investment in your mental"
                          " well-being.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                ), 
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Tips for Meditation", style: TextStyle(fontSize: 20),),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 230,
                width: 300,
                child: Column(
                  children: [
                    Text("Create A Dedicated Space", style: TextStyle(fontSize: 18),),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Find a quiet, comfortable place where you won’t be disturbed."
                      " Creating a dedicated space for meditation promotes concentration, establishes"
                      " routine, reduces distractions, and promotes emotional safety. A specific area "
                      "can also help the mind to prepare for meditation, reinforcing the habit and enhancing"
                      " focus. Lighting a candle or incense can signal to your brain that you’re about to sit"
                      " to meditate."),

                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 240,
                width: 300,
                child: Column(
                    children: [
                      Text("Choose The Right Time", style: TextStyle(fontSize: 18),),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Timing is important because it can impact the quality and effectiveness of your practice."
                          " Everyone’s rhythm varies — some people are most alert and receptive in the mornings, while"
                          " others might find the evening more conducive to relaxation. Meditating when you’re naturally "
                          "more relaxed or focused can make it easier to enter a meditative state and maintain it."
                          " Additionally, finding a consistent time slot in your routine can help to establish meditation as"
                          " a habit and make it easier to maintain.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                ), 
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 200,
                width: 300,
                child: Column(
                    children: [
                      Text("Start With Short Sessions", style: TextStyle(fontSize: 18),),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Starting with short meditation sessions can be incredibly beneficial for beginners."
                          " It makes the practice approachable and manageable, reducing the risk of frustration or"
                          " burnout. Beginning with just a few minutes each day allows beginners to gradually build up"
                          " their concentration and familiarity with the practice. As they become more comfortable, they "
                          "can then extend their session lengths",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                ), 
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 180,
                width: 300,
                child: Column(
                    children: [
                      Text("Be Patient With Yourself And With The Process", style: TextStyle(fontSize: 18),),
                    const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Understand that your mind will wander, and that’s okay. The practice of returning your"
                          " focus to your meditation is what truly matters. Also remember that it will take time for"
                          " you to see the fruits of your labor; the results of meditation are not immediate.",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                ), 
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Meditation and well-being articles", style: TextStyle(fontSize: 20),),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                color: Colors.lightBlue[50],
                height: 180,
                width: 300,
                child: Column(
                  children: [
                     Link(
                      uri: Uri.parse(
                       'https://www.mayoclinic.org/tests-procedures/meditation/in-depth/meditation/art-20045858'),
                      target: LinkTarget.blank,
                      builder: (BuildContext ctx, FollowLink? openLink) {
                        return TextButton.icon(
                      onPressed: openLink,
                      label: const Text('Meditation: A simple, fast way to reduce stress'),
                      //icon: const Icon(Icons.read_more),
                        );
                      },
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Link(
                      uri: Uri.parse(
                       'https://news.harvard.edu/gazette/story/2018/04/harvard-researchers-study-how-mindfulness-may-change-the-brain-in-depressed-patients/'),
                      target: LinkTarget.blank,
                      builder: (BuildContext ctx, FollowLink? openLink) {
                        return TextButton.icon(
                      onPressed: openLink,
                      label: const Text('When science meets mindfulness'),
                      //icon: const Icon(Icons.read_more),
                        );
                      },
                    ),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
