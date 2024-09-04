import 'package:flutter/material.dart';
import 'package:tablet_ai/screens/tabs/chat_tab.dart';
import 'package:tablet_ai/screens/tabs/settings_tab.dart';
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
              Expanded(
                child: SizedBox(
                    child: IndexedStack(
                  index: selected,
                  children: const [
                    ChatTab(),
                    SettingsTab(),
                    SizedBox(),
                  ],
                )),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(
                width: 275,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                ai,
                                height: 35,
                                color:
                                    selected == 0 ? Colors.black : Colors.grey,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextWidget(
                                text: 'AI Chat',
                                fontSize: 20,
                                fontFamily: 'Bold',
                                color:
                                    selected == 0 ? Colors.black : Colors.grey,
                              ),
                            ],
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                settings,
                                height: 35,
                                color:
                                    selected == 1 ? Colors.black : Colors.grey,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextWidget(
                                text: 'Settings',
                                fontSize: 20,
                                fontFamily: 'Bold',
                                color:
                                    selected == 1 ? Colors.black : Colors.grey,
                              ),
                            ],
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                transcription,
                                color:
                                    selected == 2 ? Colors.black : Colors.grey,
                                height: 35,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              TextWidget(
                                text: 'Live Transcription',
                                fontSize: 20,
                                fontFamily: 'Bold',
                                color:
                                    selected == 2 ? Colors.black : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
