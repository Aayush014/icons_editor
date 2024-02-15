import 'package:flutter/material.dart';

void main() {
  runApp(const IconsEdit());
}

class IconsEdit extends StatefulWidget {
  const IconsEdit({super.key});

  @override
  State<IconsEdit> createState() => _IconsEditorState();
}

class _IconsEditorState extends State<IconsEdit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Icons Editor'),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.grey,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 280,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Icon(
                  icons[iconIndex],
                  size: 100,
                  color: colors[colorIndex],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 131),
              height: 60,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: const Text(
                'Select Color',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 120,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          colorIndex = index;
                        });
                      },
                      child: Container(
                        width:85,
                        height: 70,
                        margin: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.circular(16),
                          border: colorIndex == index
                              ? Border.all(color: Colors.grey, width: 2)
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 130),
              height: 60,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: const Text(
                'Select Icon',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 120,
              width: 390,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          iconIndex = index;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 0.5,
                              blurRadius: 4,
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          border: iconIndex == index
                              ? Border.all(color: Colors.black12, width: 2)
                              : null,
                        ),
                        child: Icon(
                          icons[index],
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List<Color> colors = [
  Colors.purple,
  Colors.indigo,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.red,
];
List<IconData> icons = [
  Icons.all_inclusive,
  Icons.add,
  Icons.apple_rounded,
  Icons.remove_red_eye,
  Icons.search,
  Icons.call,
  Icons.arrow_back_ios_new,
  Icons.arrow_forward_ios_outlined,
  Icons.shield_outlined,
  Icons.accessibility_new,
];

int colorIndex = 0;
int iconIndex = 0;
