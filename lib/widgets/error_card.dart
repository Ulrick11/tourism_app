import 'package:countrys_app/widgets/text_utlis.dart';
import 'package:flutter/material.dart';
class ErrorCard extends StatelessWidget {
  const ErrorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red.shade100),
        child:const  Column(children: [
          Spacer(),
          Icon(
            Icons.cancel,
            color: Colors.red,
            size: 70,
          ),
          Spacer(),
          TextUtil(
            text: "Something Went Wrong",
            weight: true,
          ),
          Spacer(),
          Spacer(),
        ]),
      ),
    );
  }
}