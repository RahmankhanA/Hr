import 'package:flutter/material.dart';
import 'package:hr_management/data/user_detail.dart';

class MyCard extends StatelessWidget {
  final title;
  const MyCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  static const TextStyle subHeadingStyle = TextStyle(
    fontSize: 20,
  );
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: subHeadingStyle,
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),
        ),
        SizedBox(
          height: h*0.15,
          child: ListView.builder(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: user_details.length,
            itemBuilder: (BuildContext context, int index) => Card(
              child: Container(
                  width: w*0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: NetworkImage(
                                user_details[index].urlAvatar.toString()),
                            backgroundColor: Colors.transparent,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  user_details[index].name.toString(),
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  user_details[index].function.toString(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on_outlined),
                              Text(user_details[index].location.toString())
                            ],
                          ),
                          Text('Exp: ${user_details[index].experience}'),
                          Text('JD Match : ${user_details[index].experience}%'),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
