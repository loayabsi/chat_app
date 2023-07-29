import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];

  void _addMessage(String message) {
    setState(() {
      _messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder( itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index)
              {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),

          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Row(
              children: [
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'اكتب هنا...',
                      border: InputBorder.none,
                    ),
                    onSubmitted: (String message) {
                      _addMessage(message);
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    String message = 'يتم الإرسال';
                    _addMessage(message);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}