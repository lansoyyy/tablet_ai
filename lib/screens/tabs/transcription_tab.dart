import 'package:flutter/material.dart';
import 'package:tablet_ai/widgets/text_widget.dart';

class TranscriptionTab extends StatelessWidget {
  const TranscriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Live Transcription',
          style: TextStyle(fontSize: 24, fontFamily: 'Bold'),
        ),
        SizedBox(height: 20),
        TranscriptItem(
          speaker: 'Speaker 1',
          message: 'Good morning, So what are the forecast net loss for Q2?',
        ),
        TranscriptItem(
          speaker: 'Speaker 2',
          message: 'Let me have a look',
        ),
        TranscriptItem(
          speaker: 'Speaker 3',
          message: 'How beneficial is EAZEYE?',
        ),
      ],
    );
  }
}

class TranscriptItem extends StatelessWidget {
  final String speaker;
  final String message;

  const TranscriptItem(
      {super.key, required this.speaker, required this.message});

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
          GestureDetector(
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
          ),
        ],
      ),
    );
  }
}
