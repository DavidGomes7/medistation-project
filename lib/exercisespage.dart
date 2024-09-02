import 'package:flutter/material.dart';
import 'package:medistation_project/navbar.dart';

class ExercisesPage extends StatefulWidget {
  ExercisesPage({Key ? key}) : super(key: key);

  @override
  _ExercisesPageState createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
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
                child: Text("Exercises",
                style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              // Exercise 1
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("1. Pursed lip breathing", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue[50],
                height: 360,
                width: 360,
                child: Column(
                  children: [
                    Text("This simple breathing technique helps to slow down your breathing pace by having you applyTrusted Source deliberate effort in each breath."
                          "You can practice pursed lip breathing at any time. It may be especially useful during activities such as bending, lifting, or stair climbing."
                          "Practice using this breath 4 to 5 times a day when you begin so that you can correctly learn the breathing pattern."
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Column(
                      children: [
                        Row(children: [Text("To do it:")],),
                        Padding(padding: EdgeInsets.all(5)),
                        Row(children: [Text("1. Relax your neck and shoulders")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Column(children: [Text("2. Keeping your mouth closed, inhale slowly through your nose for 2 counts")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Column(children: [Text("3. Pucker or purse your lips as though you were going to whistle.")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Column(children: [Text("4. Exhale slowly by blowing air through your pursed lips for a count of 4.")],)
                      ],
                    ),
                  ],
                ),
              ),
              // Exercise 2
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("2. Diaphragmatic breathing", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue[50],
                height: 540,
                width: 360,
                child: Column(
                  children: [
                    Text("Diaphragmatic breathing (aka belly breathing) can help you use your diaphragm properly."
                        "A 2020 meta-analysisTrusted Source shows this type of breathing is particularly helpful "
                        "in people with breathing challenges due to chronic obstructive pulmonary disease (COPD),"
                        " heart problems, or cancer."
                      ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("Practice diaphragmatic breathing for 5 to 10 minutes 3 to 4 times daily."),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("When you begin, you may feel tired, but over time the technique should become easier and should feel more natural."),
                    Padding(padding: EdgeInsets.all(5)),
                    Column(
                      children: [
                        Text("1. Lie on your back with your knees slightly bent and your head on a pillow."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("2. You may place a pillow under your knees for support."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("3. Place one hand on your upper chest and one hand below your rib cage, allowing you to feel the movement of your diaphragm."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("4. Slowly inhale through your nose, feeling your stomach pressing into your hand."),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(children: [Text("5.Keep your other hand as still as possible.")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("6. Exhale using pursed lips as you tighten your abdominal muscles, keeping your upper hand completely still."),
                      ],
                    ),

                  ],
                ),
              ),
              // Exercise 3
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("3. Breath focus technique", style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue[50],
                height: 740,
                width: 360,
                child: Column(
                  children: [
                    Text("This deep breathing technique uses imagery or focus words and phrases."),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("You can choose a focus word that makes you smile, feel relaxed, or is simply neutral."
                    " Some examples include the words peace, let go, or relax. It can be any word that suits you"
                    " to focus on and repeat through your practice."),
                    Padding(padding: EdgeInsets.all(5)),
                    Text("As you build up your breath focus practice, you can start with a 10-minute session. Gradually increase the duration until your sessions are at least 20 minutes."),
                    Padding(padding: EdgeInsets.all(5)),
                    Column(
                      children: [
                        Row(children: [Text("1. Sit or lie down in a comfortable place.")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("2. Bring your awareness to your breaths without trying to change how you’re breathing."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("3. Alternate between normal and deep breaths a few times. Notice any differences between normal breathing and deep breathing. Notice how your abdomen expands with deep inhalations."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("4. Note how shallow breathing feels compared to deep breathing."),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(children: [Text("5.Practice your deep breathing for a few minutes.")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("6. Place one hand below your belly button, keeping your belly relaxed, and notice how it rises with each inhale and falls with each exhale."),
                        Padding(padding: EdgeInsets.all(2)),
                        Row(children: [Text("7. Let out a loud sigh with each exhale.")],),
                        Padding(padding: EdgeInsets.all(2)),
                        Text("8. Begin the practice of breath focus by combining this deep breathing with imagery and a focus word or phrase that will support relaxation."),
                        Padding(padding: EdgeInsets.all(2)),
                        Text('9. You can imagine that the air you inhale brings waves of peace and calm throughout your body. Mentally say, “Inhaling peace and calm.”'),
                        Padding(padding: EdgeInsets.all(2)),
                        Text('10. Imagine that the air you exhale washes away tension and anxiety. You can say to yourself, “Exhaling tension and anxiety.”'),
                      ],
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