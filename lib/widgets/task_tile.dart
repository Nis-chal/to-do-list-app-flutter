import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  final void Function() longPressCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  //   void checkboxCallback(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallback ,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
          // onChanged: toggleCheckboxState,
        ));
  }
}

// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//   final void Function(bool?) toggleCheckboxState;

//   TaskCheckbox(
//       {required this.checkboxState, required this.toggleCheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxState,
//     );
//   }
// }


//  (bool? checkboxState) {
//             setState(() {
//               isChecked = checkboxState!;
//             });
//           }),


