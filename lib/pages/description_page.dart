import 'package:flutter/material.dart';
import 'package:flutter_4_beginner_project/class/ItemClass.dart';

class DescriptionWidget extends StatefulWidget {
  final ItemClass? box;

  const DescriptionWidget({super.key, required this.box});

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  double? fontsizecustom = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('snakbar'),
                  behavior: SnackBarBehavior.floating,
                ));
              },
              icon: const Icon(Icons.info))
        ],
        title: Text(widget.box?.title ?? ''),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset(widget.box?.image ?? ''),
            Wrap(
              spacing: 8,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 8;
                      });
                    },
                    child: const Text(
                      "Small Title",
                      style: TextStyle(fontSize: 11),
                    )),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 10;
                      });
                    },
                    child: const Text("Medium Title",
                        style: TextStyle(fontSize: 11))),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 12;
                      });
                    },
                    child: const Text("Large Title",
                        style: TextStyle(fontSize: 11))),
                FilledButton(
                    onPressed: () {
                      setState(() {
                        fontsizecustom = 14;
                      });
                    },
                    child: const Text("X-Large Title",
                        style: TextStyle(fontSize: 11))),
              ],
            ),
            FittedBox(
              child: Text(
                widget.box?.title ?? '',
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              widget.box?.description ?? '',
              style: TextStyle(
                fontSize: fontsizecustom,
              ),
              textAlign: TextAlign.justify,
            )
          ]),
        ),
      ),
    );
  }
}
