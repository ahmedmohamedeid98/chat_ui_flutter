import 'package:chat_ui_flutter/models/message.dart';
import 'package:chat_ui_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

class MessagesContainer extends StatefulWidget {
  final List<Message> messages;

  const MessagesContainer({Key key, @required this.messages}) : super(key: key);
  @override
  _MessagesContainerState createState() => _MessagesContainerState();
}

class _MessagesContainerState extends State<MessagesContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
      child: ListView.builder(
        itemCount: widget.messages.length,
        itemExtent: 100.0,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: widget.messages[index].sender,
                      ),
                    ),
                  ),
              child: _MessageCard(message: widget.messages[index]));
        },
      ),
    );
  }
}

class _MessageCard extends StatelessWidget {
  final Message message;

  const _MessageCard({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: message.unread ? Color(0xFFFFEFEE) : Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(message.sender.imageUrl),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.sender.name,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8.0),
                  _flexibleText(),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                message.time,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 8.0),
              message.unread ? _newText(context) : SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  Flexible _flexibleText() {
    return Flexible(
      child: Text(
        message.text,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Container _newText(BuildContext context) {
    return Container(
      height: 20,
      width: 40,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      child: Text(
        'New',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
