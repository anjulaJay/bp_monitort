import 'package:flutter/material.dart';

class Normal extends StatelessWidget {
  const Normal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your current Blood Pressure Status',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/normal.png"),
                    width: 190,
                  ),
                  Text(
                    'Normal Blood Pressure',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'It indicates that the pressure of blood against the walls of your arteries is within the normal range during both heartbeats (systolic) and rests (diastolic).',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
          'Your current Blood Pressure Status',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/normal.png"),
                    width: 190,
                  ),
                  Text(
                    'Elevated Blood Pressure',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'While not categorized as high blood pressure, it indicates an increased risk of developing hypertension in the future and warrants lifestyle modifications.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HypStage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
          'Your current Blood Pressure Status',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/normal.png"),
                    width: 190,
                  ),
                  Text(
                    'Hypertension Stage 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'It signifies mild to moderate high blood pressure, requiring lifestyle changes and, in some cases, medication to lower blood pressure and reduce cardiovascular risks.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HypStage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
          'Your current Blood Pressure Status',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        )),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("assets/normal.png"),
                    width: 190,
                  ),
                  Text(
                    'Hypertension Stage 2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "It indicates severe high blood pressure and usually requires medication along with lifestyle changes to manage blood pressure effectively and reduce the risk of complications such as heart disease, stroke, and kidney problems.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HypCrisis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your current Blood Pressure Status',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/normal.png"),
                    width: 190,
                  ),
                  Text(
                    'Hypertensive Crisis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Hypertensive crises require immediate medical attention as they can lead to severe complications such as stroke, heart attack, or organ damage if left untreated. Treatment may involve hospitalization and intravenous medications to rapidly lower blood pressure.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
