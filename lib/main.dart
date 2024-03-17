import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Team(),
        child: Consumer<Team>(builder: (context, Team, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.orange,
                    title: Text(
                      'points counter',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                  body: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            Text('Team A', style: TextStyle(fontSize: 40)),
                            Text('${Team.team1}',
                                style: TextStyle(fontSize: 150)),
                            ElevatedButton(
                                onPressed: () {
                                  Team.change1();
                                },
                                child: Text('Add 1 point ',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                            SizedBox(height: 12),
                            ElevatedButton(
                                onPressed: () {
                                  Team.change2();
                                },
                                child: Text('Add 2 points',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                            SizedBox(height: 12),
                            ElevatedButton(
                                onPressed: () {
                                  Team.change3();
                                },
                                child: Text('Add 3 points',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                          ]),
                          SizedBox(
                            height: 370,
                            child: VerticalDivider(
                              thickness: 1,
                            ),
                          ),
                          Column(children: [
                            Text('Team B', style: TextStyle(fontSize: 40)),
                            Text('${Team.team2}',
                                style: TextStyle(fontSize: 150)),
                            ElevatedButton(
                                onPressed: () {
                                  Team.chang1();
                                },
                                child: Text('Add 1 point ',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                            SizedBox(height: 12),
                            ElevatedButton(
                                onPressed: () {
                                  Team.chang2();
                                },
                                child: Text('Add 2 points',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                            SizedBox(height: 12),
                            ElevatedButton(
                                onPressed: () {
                                  Team.chang3();
                                },
                                child: Text('Add 3 points',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  minimumSize: Size(60, 50),
                                )),
                          ]),
                        ],
                      ),
                      SizedBox(height: 90),
                      ElevatedButton(
                          onPressed: () {
                            Team.restart();
                          },
                          child: Text('    restart    ',
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(70, 50),
                          )),
                    ],
                  )));
        }));
  }
}

class Team extends ChangeNotifier {
  int team1 = 0;
  int team2 = 0;
  change1() {
    team1++;
    notifyListeners();
  }

  change2() {
    team1 += 2;
    notifyListeners();
  }

  change3() {
    team1 += 3;
    notifyListeners();
  }

  chang1() {
    team2++;
    notifyListeners();
  }

  chang2() {
    team2 += 2;
    notifyListeners();
  }

  chang3() {
    team2 += 3;
    notifyListeners();
  }

  restart() {
    team1 = 0;
    team2 = 0;
    notifyListeners();
  }
}