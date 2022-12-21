import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({super.key, required this.path, required this.title});
  String path;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 105, 53, 50),
                      fontSize: 60,
                      fontWeight: FontWeight.w700)),
            ),
            Expanded(
              flex: 3,
              child: Image.asset(
                path,
                width: 390,
              ),
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}

BoxDecoration BackgroundPicture() {
  return const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/jpg/mermer.jpg'), fit: BoxFit.cover));
}
