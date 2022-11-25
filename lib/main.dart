import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: points(),
  ));
}

class points extends StatefulWidget {
  const points({Key? key}) : super(key: key);

  @override
  State<points> createState() => _pointsState();
}

class _pointsState extends State<points> {
   int teampointA =0;
   int teampointB =0;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text('Points Counter',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8,32,8,8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                  const Text('Team A',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 10,),
                 Text('$teampointA',
                  style: TextStyle(
                    fontSize: 80,
                  ),
                ),
                    const SizedBox(height: 50,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointA += 1;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 1 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointA += 2;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 2 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointA += 3;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                      child: const Text('Add 3 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),

        ],
      ),
                 VerticalDivider(color: Colors.grey, thickness: 1,),

                Column(
                  children: [
                    const Text('Team B',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 10,),

                     Text('$teampointB',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 80,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointB += 1;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                      child: const Text('Add 1 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointB += 2;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                      child: const Text('Add 2 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {
                      setState(() {
                        teampointB += 3;
                      });
                    },
                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                      child: const Text('Add 3 Point',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),

          ElevatedButton(onPressed: () {
            setState(() {
              teampointA = 0;
              teampointB = 0;
            });
          },
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black)),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(60,10,60,10),
              child: Text('Reset',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
          ),

      ],
      ),
      )
    );
  }
}
