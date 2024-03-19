import 'package:bp_monitor/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class FormData extends GetxController {
  final systolicController = TextEditingController();
  final diastolicController = TextEditingController();

  void submitData() {
    final systolic = int.tryParse(systolicController.text) ?? 0;
    final diastolic = int.tryParse(diastolicController.text) ?? 0;

    //Normal
    if (0 < systolic && systolic < 120 && 0 < diastolic && diastolic < 80) {
      Get.to(const Normal());
    } else {
      //Elevated
      if (120 < systolic && 129 > systolic && 0 < diastolic && diastolic < 80) {
        Get.to(Elevated());
      } else {
        //Hypertension Stage 1
        if (130 <= systolic &&
            139 >= systolic &&
            80 <= diastolic &&
            89 >= diastolic) {
          Get.to(HypStage1());
        } else {
//Hypertension Stage 2
          if (systolic >= 140 &&
              systolic <= 179 &&
              diastolic >= 90 &&
              diastolic <= 119) {
            Get.to(HypStage2());
          } else {
            if (systolic >= 180 && diastolic >= 120) {
              Get.to(HypCrisis());
            }
          }
        }
      }
    }

    // ignore: avoid_print
    print('Blood Pressure : $systolic/$diastolic mmHg');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Blood Pressure Monitor',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.redAccent,
          ),
        ),
        home: InputScreen());
  }
}

class InputScreen extends StatelessWidget {
  InputScreen({super.key});

  final FormData fd = Get.put(FormData());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: const Center(
                child: Text(
              'Blood Pressure Monitor',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ))),
        body: Card(
          color: const Color.fromARGB(255, 253, 240, 240),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Image(
                image: AssetImage("assets/logo.png"),
                width: 230,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: fd.systolicController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Systolic Blood Count',
                      prefixIcon: Icon(Icons.bloodtype),
                      helperText: 'Enter the data in mmHg',
                    )),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: fd.diastolicController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Diastolic Blood Count',
                      prefixIcon: Icon(Icons.bloodtype),
                      helperText: 'Enter the data in mmHg',
                    )),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                  onPressed: () {
                    fd.submitData();
                  },
                  icon: const Icon(Icons.forward),
                  label: const Text('Check your status/ Show info'))
            ],
          ),
        ),
      ),
    );
  }
}
