import 'package:flutter/material.dart';
import 'package:tablet_ai/utils/const.dart';
import 'package:tablet_ai/widgets/text_widget.dart';
import 'package:tablet_ai/widgets/textfield_widget.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  final msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: 'Settings',
                  fontSize: 35,
                  fontFamily: 'Bold',
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          ai,
                          color: Colors.black,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: 'Settings 1',
                          fontSize: 20,
                          fontFamily: 'Bold',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          settings,
                          color: Colors.black,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: 'Settings 2',
                          fontSize: 20,
                          fontFamily: 'Bold',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          transcription,
                          color: Colors.black,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: 'Settings 3',
                          fontSize: 20,
                          fontFamily: 'Bold',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          mic,
                          color: Colors.black,
                          height: 35,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          text: 'Settings 4',
                          fontSize: 20,
                          fontFamily: 'Bold',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const SizedBox(
              height: 350,
              child: VerticalDivider(
                color: Colors.black,
                thickness: 3,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextWidget(
                    text: 'Information 1',
                    fontSize: 18,
                    fontFamily: 'Medium',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextWidget(
                    text: 'Settings Info',
                    fontSize: 18,
                    fontFamily: 'Medium',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextWidget(
                    text: 'Security Settings',
                    fontSize: 18,
                    fontFamily: 'Medium',
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(25.0), // Rounded edges
                        border: Border.all(color: Colors.black), // Black border
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10), // Padding inside the button
                      child: const Row(
                        mainAxisSize:
                            MainAxisSize.min, // Shrinks to the size of content
                        children: [
                          Text(
                            'Select data to be processed',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Medium'),
                          ),
                          SizedBox(width: 10), // Space between text and arrow
                          Icon(Icons.arrow_drop_down,
                              color: Colors.black), // Dropdown arrow icon
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextWidget(
                    text: 'Delete Account',
                    fontSize: 18,
                    fontFamily: 'Medium',
                  ),
                ),
              ],
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(
            height: 20,
          ),
        ),
        Card(
          elevation: 2,
          color: Colors.white,
          child: TextFieldWidget(
            suffix: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
              ),
            ),
            label: 'Send a message to AI',
            controller: msg,
          ),
        ),
      ],
    );
  }
}
