import 'package:chat_app/features/chat/views/widgets/calls_body.dart';
import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CallsBody(),
    );
  }
}
