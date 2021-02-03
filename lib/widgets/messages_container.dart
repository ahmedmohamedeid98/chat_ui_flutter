import 'package:chat_ui_flutter/models/message.dart';
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
          return _MessageCard(message: widget.messages[index]);
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
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      color: message.unread ? Colors.red.shade100 : Colors.transparent,
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(message.sender.imageUrl),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(message.sender.name),
                      Text(message.time),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          message.text,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      message.unread
                          ? Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 5),
                                child: Text(
                                  'New',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  message.text,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 20,
                width: 30,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'New',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),*/
        ],
      ),
    );
  }
}
