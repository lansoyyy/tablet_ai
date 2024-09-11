import 'package:flutter/material.dart';
import 'package:tablet_ai/screens/tabs/chat_tab.dart';
import 'package:tablet_ai/screens/tabs/settings_tab.dart';
import 'package:tablet_ai/screens/tabs/transcription_tab.dart';
import 'package:tablet_ai/utils/const.dart';
import 'package:tablet_ai/widgets/text_widget.dart';
import 'package:tablet_ai/widgets/textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 0;
                            });
                          },
                          child: Image.asset(
                            selected == 0
                                ? 'assets/images/selected/Frame.png'
                                : 'assets/images/unselected/Frame (1).png',
                            height: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 1;
                            });
                          },
                          child: Image.asset(
                            selected == 1
                                ? 'assets/images/selected/Frame 52 (1).png'
                                : 'assets/images/unselected/Frame 52.png',
                            height: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selected = 2;
                            });
                          },
                          child: Image.asset(
                            selected == 2
                                ? 'assets/images/selected/Frame 55 (1).png'
                                : 'assets/images/unselected/Frame 55.png',
                            height: 50,
                          ),
                        ),
                      ),

                      // const Expanded(child: SizedBox()),
                      // selected == 2
                      //     ? GestureDetector(
                      //         onTap: () {
                      //           showCustomDialog(context);
                      //         },
                      //         child: Row(
                      //           mainAxisAlignment:
                      //               MainAxisAlignment.spaceBetween,
                      //           children: [
                      //             TextWidget(
                      //               align: TextAlign.start,
                      //               text: 'Record\nYourself',
                      //               fontSize: 20,
                      //               fontFamily: 'Bold',
                      //               color: Colors.black,
                      //             ),
                      //             Image.asset(
                      //               mic1,
                      //               height: 50,
                      //             ),
                      //           ],
                      //         ),
                      //       )
                      //     : const SizedBox(),
                    ],
                  ),
                ),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
              Expanded(
                child: SizedBox(
                    child: IndexedStack(
                  index: selected,
                  children: const [
                    ChatTab(),
                    TranscriptionTab(),
                    SettingsTab(),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Rounded corners
          ),
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Shrinks to content height
                children: [
                  const Text(
                    'Your Document & your Audio notes Associated with this Documents will be Processed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Bold'),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Checkbox(
                        value: false, // Default unchecked
                        onChanged: (bool? newValue) {
                          // Handle checkbox change
                        },
                      ),
                      TextWidget(
                          text: 'Do not show warning again', fontSize: 14),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded button
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
