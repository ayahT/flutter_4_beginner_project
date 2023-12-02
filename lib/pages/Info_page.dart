import 'package:flutter/material.dart';
import 'package:flutter_4_beginner_project/core/notifier.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var map = {
      "Ayah Tarek": const Icon(Icons.person),
      "ayahdawood16@gmail.com": const Icon(Icons.person),
      "01287655991": const Icon(Icons.phone)
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(children: [
        const Center(
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/yeah.png"),
            radius: 60,
          ),
        ),
        for (var entry in map.entries)
          ListTile(title: Text(entry.key), leading: entry.value),
        FloatingActionButton(
          onPressed: () {
            isDark.value = !isDark.value;
          },
          child: ValueListenableBuilder(
            valueListenable: isDark,
            builder: (context, value, child) {
              if (!value) {
                return const Icon(
                  Icons.dark_mode,
                  color: Colors.black,
                );
              } else {
                return const Icon(
                  Icons.light_mode,
                  color: Colors.white,
                );
              }
            },
          ),
        )
      ]),
    );
  }
}
