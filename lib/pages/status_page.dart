import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/data/data_dummy.dart';
import 'package:flutter_codigo_whatsapp_clone/widgets/model_updates_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: Colors.black12,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/12931722/pexels-photo-12931722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                ),
              ),
              Positioned(
                bottom: -6,
                right: -6,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff01C851),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            "My status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        Text(
          "Recent updates",
        ),
    ...List.generate(chats.length, (index) => ModelUpdatesWidget(chatModel2: chats[index],)),
      ],
    );
  }
}
