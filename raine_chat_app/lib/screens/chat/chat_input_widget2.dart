import 'package:flutter/material.dart';

class ChatInputWidget2 extends StatefulWidget {
  final Function(String) onSubmitted;

  const ChatInputWidget2({Key key, @required this.onSubmitted})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _ChatInputWidget2State();
}

class _ChatInputWidget2State extends State<ChatInputWidget2> {
  
  TextEditingController editingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  
  @override
  void initState() {
    super.initState();
    editingController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  bool get isTexting => editingController.text.length != 0;

  void sendMessage(String message) {
    if (!isTexting) {
      return;
    }
    widget.onSubmitted(message);
    editingController.text = '';
    focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: Color(0xff3b5998).withOpacity(0.06),
              borderRadius: BorderRadius.circular(32.0),
            ),
            margin: EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        color: Color(0xff3b5998),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Message...",
                  ),
                  focusNode: focusNode,
                  textInputAction: TextInputAction.send,
                  controller: editingController,
                  onSubmitted: sendMessage,
                )),
                IconButton(
                  icon: Icon(isTexting ? Icons.send : Icons.keyboard_voice),
                  onPressed: () {
                    sendMessage(editingController.text);
                  },
                  color: Color(0xff3b5998),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  
}