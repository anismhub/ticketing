import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String nomor;
  final String email;

  const InfoWidget({
    Key? key,
    required this.nomor,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Profile detail",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 2)),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 8)),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 4),
                Text(
                  "Email    : $email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                Icon(Icons.phone_android),
                SizedBox(width: 4),
                Text(
                  "No telp : $nomor",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
