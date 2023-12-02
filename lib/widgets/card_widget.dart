import 'package:flutter/material.dart';
import 'package:flutter_4_beginner_project/class/ItemClass.dart';
import 'package:flutter_4_beginner_project/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  final ItemClass? box;

  const CardWidget({
    Key? key,
    required this.box,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DescriptionWidget(box:box);
        }));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          child: Column(
            children: [
              Image.asset(box?.image ?? ""),
              Text(
                box?.title ?? "",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                box?.description ?? "",
                style: const TextStyle(fontSize: 9),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
