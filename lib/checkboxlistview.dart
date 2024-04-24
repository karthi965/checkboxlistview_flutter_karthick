import 'package:flutter/material.dart';

class Checkboxlistview extends StatefulWidget {
  const Checkboxlistview({super.key});


  @override
  State<Checkboxlistview> createState() => _CheckboxlistviewState();

}
final List<String> list = [
  'google',
  'gmail',
  'youtupe',
  'instagram',
];
List<bool> selectedChechboxes = [
  false,
  false,
  false,
  false,
];


class _CheckboxlistviewState extends State<Checkboxlistview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Checkboxlistview',
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                          value: selectedChechboxes[index],
                          onChanged: (status) {
                            setState(() {
                              selectedChechboxes[index] = status!;
                            });
                          }),
                      Text(list[index])
                    ],
                  ),
                  Divider(
                    height: 10,
                  )
                ],
              );
            }
        )
    );

  }
}
