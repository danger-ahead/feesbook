import 'package:feesbook/colors.dart';
import 'package:flutter/material.dart';

class ClassContainer extends StatefulWidget {
  const ClassContainer({Key? key}) : super(key: key);

  @override
  State<ClassContainer> createState() => _ClassContainerState();
}

class _ClassContainerState extends State<ClassContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFF3F3F3),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Harshit Pathak',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            )),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text('Physics',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF575656),
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text('6/10 paid',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF11120C),
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: LinearProgressIndicator(
            value: 0.4,
            color: primaryColor,
            backgroundColor: Color(0xFFE2E2E2),
          ),
        ),
        InkWell(
            onTap: () {},
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 26.0),
                width: double.infinity,
                height: 40.0,
                decoration: BoxDecoration(
                  color: greenBackground,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'View ',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.arrow_forward, size: 16.0, color: primaryColor),
                  ],
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 14.0),
          child: Align(
            alignment: Alignment.center,
            child: Text('Add students',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF3F3E3E),
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ]),
    );
  }
}
