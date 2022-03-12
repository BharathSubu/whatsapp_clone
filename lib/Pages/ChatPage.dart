// import 'package:chatapp/CustomUI/CustomCard.dart';
// import 'package:chatapp/Model/ChatModel.dart';
// import 'package:chatapp/Screens/SelectContact.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomCard.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  // ChatPage({Key key, this.chatmodels, this.sourchat}) : super(key: key);
  // final List<ChatModel> chatmodels;
  // final ChatModel sourchat;

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Bharath",
      icon: "person.svg",
      isGroup: false,
      time: "4:00",
      currentMessage: 'Hello Everyone',
    ),
    ChatModel(
      name: "Rahul",
      icon: "person.svg",
      isGroup: false,
      time: "4:00",
      currentMessage: 'Hello Everyone',
    ),
    ChatModel(
      name: "Veera",
      icon: "person.svg",
      isGroup: true,
      time: "4:00",
      currentMessage: 'Hello Everyone',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (contex, index) => CustomCard(chatModel: chats[index]
            // sourchat: widget.sourchat,
            ),
      ),
      //  // itemCount: widget.chatmodels.length,
      //   //itemBuilder: (contex, index) =>
      //   children = [ CustomCard(
      //     // chatModel: widget.chatmodels[index],
      //     // sourchat: widget.sourchat,
      //   ),]
    );
  }
}
