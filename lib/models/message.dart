import 'models.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// You - Current User
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

final User grep = User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg');

final User james =
    User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg');

final User john = User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');

final User olivia =
    User(id: 1, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg');

final User sam = User(id: 2, name: 'Sam', imageUrl: 'assets/images/sam.jpg');

final User sophia =
    User(id: 3, name: 'Sophia', imageUrl: 'assets/images/sophia.jpg');

final User steven =
    User(id: 3, name: 'Steven', imageUrl: 'assets/images/steven.jpg');

List<User> favorites = [
  sam,
  steven,
  olivia,
  john,
  grep,
  sam,
  steven,
  olivia,
  john,
  grep
];

final Message m1 = Message(
  sender: john,
  time: "5:30 PM",
);
List<Message> chats = [
  Message(
    sender: james,
    time: "5:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: olivia,
    time: "4:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: "3:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: "2:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: "2:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: "2:30 PM",
    text: "Hey how are you ?",
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: james,
    time: "5:30 PM",
    text: "Hey how's it is going ? what did you do today?",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: "5:32 PM",
    text: "Just walked my doge. she was super duper cute, the best pupper!",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: "5:33 PM",
    text: "How\'s the doggo?",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: "5:33 PM",
    text: "All the food",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: "5:35 PM",
    text: "Nice! what kind of food did you eat?",
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: "5:33 PM",
    text: "I ate so much food today.",
    isLiked: true,
    unread: true,
  ),
];
