import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  static List messageContent = [
    {
      "user_image":
          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "James",
      "message": "Thank you! That was very helpful!",
    },
    {
      "user_image":
          "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "Will Kenny",
      "message": "I know... I’m trying to get the funds.",
    },
    {
      "user_image":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "Beth Williams",
      "message":
          r"""I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...""",
    },
    {
      "user_image":
          "https://images.unsplash.com/photo-1500336624523-d727130c3328?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "Karennne",
      "message":
          r"""You: I would greatly appreciate if you could retweet this if you think its worthy :)""",
    },
    {
      "user_image":
          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "Rev Shawn",
      "message":
          r"""Wanted to ask if you’re available for a portrait shoot next week.""",
    },
    {
      "user_image":
          "https://images.unsplash.com/photo-1500336624523-d727130c3328?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "user_full_name": "Karennne",
      "message":
          r"""You: Hi Kiero, let me see what I can do gfor you. I will get back to you soon. Our """,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 55),
          Center(
              child: Text(
            "Chats",
            style:
                GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w400),
          )),
          Divider(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: messageContent.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [messageScreenWidget(index), const Divider()],
                );
              },
            ),
          ))
        ],
      ),
    );
  }

  Widget messageScreenWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userImage(index),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    usernameWidget(index),
                    messagesWidegt(index),
                  ],
                ),
              ),
            )
          ],
        )
      ]),
    );
  }

  Widget userImage(int index) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(messageContent[index]["user_image"]),
              fit: BoxFit.cover)),
    );
  }

  usernameWidget(int index) {
    return Row(
      children: [
        Text(
          "${messageContent[index]["user_full_name"]}",
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }

  Widget messagesWidegt(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.0),
      child: RichText(
          text: TextSpan(
        text: "${messageContent[index]["message"]}",
        style: const TextStyle(
            color: Color(0xff141619),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      )),
    );
  }
}
