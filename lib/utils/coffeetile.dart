import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final String imageDesc;
  const CoffeeTile(
      {super.key,
      required this.imageDesc,
      required this.imagePath,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Colors.black45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  height: 150,
                  imagePath,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              imageName,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              imageDesc,
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  r"$4",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
