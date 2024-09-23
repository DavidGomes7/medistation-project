import 'package:flutter/material.dart';
import 'package:medistation_project/components/achievement_box.dart';
import 'package:medistation_project/navbar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GoalsPage extends StatefulWidget {
  GoalsPage({Key ? key}) : super(key: key);

  @override
  _GoalsPageState createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {

  bool? isChecked = false;
  
  @override
  Widget build(BuildContext context) {

    int level = 10;
    double currentXp = 1500;
    double toNextLevel = 2100;
    double nextLevelDifference = toNextLevel - currentXp;
    int nlvdifferenceInt = nextLevelDifference.toInt();
    double currentXpPercentage = ((currentXp/toNextLevel) * 100) / 100;

    

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
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 200),
                child: Container(
                  //color: Colors.blue,
                  child: Text('David Gomes', style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                width: 350,
                //color: Colors.blue,
                child: Row(children: [Text('Lv: $level')],),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    LinearPercentIndicator(
                      width: 200,
                      lineHeight: 8,
                      backgroundColor: Colors.grey[300],
                      progressColor: Colors.lightBlue,
                      percent: currentXpPercentage,
                      animation: true,
                      animationDuration: 1500,
                    ),
                    
                    Text('To next level: $nlvdifferenceInt XP'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color.fromARGB(255, 248, 210, 94),
                          width: 330,
                          height: 200,
                          child: Column(
                            children: [
                              Text('Daily'),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (isChecked){
                                      setState(() {
                                        //isChecked = newbool;
                                        this.isChecked = isChecked!;
                                      });
                                    }
                                  ),
                                  Text('Meditate 2 times 0/2 (10 XP)')
                                ],
                              ),
                               Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (newbool){
                                      setState(() {
                                        isChecked = newbool;
                                      });
                                    }
                                  ),
                                  Text('Do the Pursed lip breathing (10 XP)')
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked, 
                                    onChanged: (bool){
                                      setState(() {});
                                    }
                                  ),
                                  Text('Do the Diaphragmatic breathing (20 XP)')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color.fromARGB(255, 117, 183, 236),
                          width: 300,
                          height: 200,
                          child: Column(
                            children: [
                              Text('Weekly'),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked, 
                                    onChanged: (bool){
                                      setState(() {});
                                    }
                                  ),
                                  Text('Login 7 times 0/7 (60 XP)')
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked, 
                                    onChanged: (bool){
                                      setState(() {});
                                    }
                                  ),
                                  Text('Do the breath focus tech 0/7 (80 XP)')
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked, 
                                    onChanged: (bool){
                                      setState(() {});
                                    }
                                  ),
                                  Text('Meditate 3 nights 0/3 (40 XP)')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Color.fromARGB(255, 89, 156, 145),
                          width: 250,
                          height: 200,
                          child: Column(
                            children: [
                              Text('Monthly'),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked, 
                                    onChanged: (bool){
                                      setState(() {});
                                    }
                                  ),
                                  Text('Login 30 times 0/30 (200 XP)')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('Achievements', style: TextStyle(fontSize: 25),),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn-icons-png.flaticon.com/512/419/419952.png',
                      title: 'Reach Level 5'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn-icons-png.flaticon.com/512/419/419952.png',
                      title: 'Reach Level 10'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn.icon-icons.com/icons2/510/PNG/512/trophy_icon-icons.com_49969.png',
                      title: 'Reach Level 15'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn.icon-icons.com/icons2/510/PNG/512/trophy_icon-icons.com_49969.png',
                      title: 'Reach Level 20'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn-icons-png.flaticon.com/512/419/419952.png',
                      title: 'Meditate 50 times'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn-icons-png.flaticon.com/512/419/419952.png',
                      title: 'Meditate 100 times'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    AchievementBox(
                      image: 'https://cdn.icon-icons.com/icons2/510/PNG/512/trophy_icon-icons.com_49969.png',
                      title: 'Meditate 200 times'
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}