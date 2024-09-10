import 'package:flutter/material.dart';
import 'calls.dart';
import 'chats.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
              'Message'
          ),
          bottom: TabBar(
            indicatorWeight: 4,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.green,
            labelStyle: Theme.of(context).textTheme.labelLarge,
            tabs: [
              const Tab(text: "Chats"),
              const Tab(text: "Calls")
            ],
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 35,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
        body: const TabBarView(
          children: [
            ChatsScreen(),
            CallsScreen(),
          ],
        ),


      ),
    );
  }


}
