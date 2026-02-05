import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text('This is a task.'), trailing: TaskCheckBox());
  }
}

class TaskCheckBox extends StatefulWidget {
  const TaskCheckBox({super.key});

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(activeColor: Colors.lightBlueAccent, value: isChecked, onChanged: (newValue) {
      setState(() {
        isChecked = newValue!;
      });
    });
  }
}
