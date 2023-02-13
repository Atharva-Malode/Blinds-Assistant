import 'package:chatbot/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _isTyping = true;

  //late TextEdtingController textEditingController;

  @override
  void initState() {
    //  textEditingController = TextEdtingController();
    super.initState();
  }

  @override
  void dispose() {
    //  textEditingController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blind's Assistant"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text("Hello this is a Text"),
                    );
                  }),
            ),
            if (_isTyping) ...[
              const SpinKitDoubleBounce(
                color: Colors.blue,
                size: 18,
              ),
              Row(
                children: [
                  Expanded(child: TextField()),
                ],
              ),
            ]
            // _isTyping ? Container() : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
