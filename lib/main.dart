import 'package:feesbook/colors.dart';
import 'package:feesbook/components/ClassContainer.dart';
import 'package:feesbook/components/FeesContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double verticalPadding = 16.0;

  late int _index;

  @override
  void initState() {
    _index = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            color: const Color(0xFFF8F9FB),
            margin: EdgeInsets.symmetric(vertical: verticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10000.0),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_rounded),
                          onPressed: () {},
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Class 12th (6AM)',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: InkWell(
                              onTap: () {},
                              child: Row(
                                children: const [
                                  Text(
                                    'View full report ',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: primaryColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(Icons.arrow_forward_ios,
                                      size: 16.0, color: primaryColor),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: verticalPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      FeesContainer(
                        title: 'Pending fees',
                        amount: '₹2,244',
                        color: primaryColorRed,
                        backgroundColor: redBackground,
                      ),
                      FeesContainer(
                        title: 'Total collected',
                        amount: '₹10,000',
                        color: primaryColor,
                        backgroundColor: greenBackground,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Students',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      )),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 16.0,
                          color: primaryColor,
                        ),
                        Text(' Add class',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const ClassContainer(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          unselectedItemColor: const Color(0xFFA7A9B7),
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.auto_graph,
              ),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
              ),
              label: 'Classes',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
