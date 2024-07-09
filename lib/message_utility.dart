import 'package:flutter/material.dart';


void _sendMessage(String text, bool isMe) {
  setState(() {
    var messages;
    messages.add(Message(text: text, isMe: isMe));
  });
}

void setState(Null Function() param0) {
}

Widget _buildMessageInput() {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.grey[200],
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Type a message...',
            ),
            onSubmitted: (text) {
              _sendMessage(text, true);
            },
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            _sendMessage('Your message', true);
          },
        ),
      ],
    ),
  );
}
class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isMe;

  ChatMessage({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}