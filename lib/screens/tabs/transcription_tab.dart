import 'package:flutter/material.dart';
import 'package:tablet_ai/widgets/text_widget.dart';
import 'package:tablet_ai/widgets/textfield_widget.dart';

class TranscriptionTab extends StatefulWidget {
  const TranscriptionTab({super.key});

  @override
  State<TranscriptionTab> createState() => _TranscriptionTabState();
}

class _TranscriptionTabState extends State<TranscriptionTab> {
  final search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Live Transcription',
                style: TextStyle(fontSize: 24, fontFamily: 'Bold'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                width: 300,
                height: 45,
                child: TextFieldWidget(
                    suffix: const Icon(Icons.search),
                    label: '',
                    hint: 'Search transcription',
                    
                    controller: search),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const TranscriptItem(
            hasAnswer: true,
            speaker: 'Speaker 1',
            message: 'Good morning, So what are the forecast net loss for Q2?',
          ),
          const TranscriptItem(
            speaker: 'Speaker 2',
            message: 'Let me have a look',
          ),
          const TranscriptItem(
            hasAnswer: true,
            speaker: 'Speaker 3',
            message: 'How beneficial is EAZEYE?',
          ),
        ],
      ),
    );
  }
}

class TranscriptItem extends StatelessWidget {
  final String speaker;
  final String message;
  final bool? hasAnswer;

  const TranscriptItem(
      {super.key,
      required this.speaker,
      required this.message,
      this.hasAnswer = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: 20.0), // Spacing between transcript items
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: [
                TextSpan(
                  text: '$speaker: ',
                  style: const TextStyle(fontFamily: 'Bold'),
                ),
                TextSpan(
                  text: message,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10), // Spacing between text and button
          hasAnswer!
              ? GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextWidget(
                        text: 'View Answer',
                        fontSize: 14,
                        fontFamily: 'Medium',
                      ),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
