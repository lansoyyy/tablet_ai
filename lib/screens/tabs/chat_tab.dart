import 'package:flutter/material.dart';
import 'package:tablet_ai/widgets/text_widget.dart';
import 'package:tablet_ai/widgets/textfield_widget.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  final msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            text: 'Hello, how can i help you?',
            fontSize: 24,
            fontFamily: 'Bold',
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              for (int i = 0; i < 5; i++)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: SizedBox(
                        height: 112,
                        width: 252,
                        child: Center(
                          child: TextWidget(
                            text: 'Possible Questions?',
                            fontSize: 18,
                            fontFamily: 'Medium',
                          ),
                        ),
                      )),
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
      ),
    );
  }
}
