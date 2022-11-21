import '../data/data.dart';
import 'package:flutter/material.dart';

class TicketList extends StatelessWidget {
  const TicketList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: ticketModel.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 4.0, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Color(0xFFE2E2E2),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        ticketModel[index].heading,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ticketModel[index].subHeading,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
