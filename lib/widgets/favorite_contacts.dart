import 'package:chat_ui_flutter/models/models.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  final List<User> contacts;

  const FavoriteContacts({Key key, this.contacts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'Favorite contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                )),
                IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final User user = contacts[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(user.imageUrl),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        user.name,
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
