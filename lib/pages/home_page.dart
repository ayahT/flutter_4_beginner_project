import 'package:flutter/material.dart';

import '../class/ItemClass.dart';
import '../widgets/card_widget.dart';

//TODO: statelessW

//* implement the code for statelessWidget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        // TODO: ctrl+space
        //* View the parameter of the object
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
                box: ItemClass(
              title: "Rocket",
              description: "the description of the rockets",
              image: "assets/images/rocket.png",
            )),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: "Space",
                      description: "the description of the space",
                      image: "assets/images/space.png",
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: ItemClass(
                      title: "Travel",
                      description: "the description of the travel",
                      image: "assets/images/travel.png",
                    ),
                  ),
                )
              ],
            ),
            CardWidget(
              box: ItemClass(
                title: "Yeah",
                description: "the description of the yeah",
                image: "assets/images/yeah.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
//*shift+alt+f
//*for format
