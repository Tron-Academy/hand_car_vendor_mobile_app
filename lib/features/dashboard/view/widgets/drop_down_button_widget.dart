import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StatusDropdownButton extends HookWidget {
  const StatusDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedStatus = useState<String>('Pending');

    return DropdownButton<String>(
      value: selectedStatus.value,
      onChanged: (String? newValue) {
        if (newValue != null) {
          selectedStatus.value = newValue;
        }
      },
      items: <String>['Pending', 'Completed', 'In Progress']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              color: value == 'Completed' ? Colors.green : Colors.redAccent,
            ),
          ),
        );
      }).toList(),
      style: TextStyle(
        color: selectedStatus.value == 'Completed'
            ? Colors.green
            : Colors.redAccent,
      ),
    );
  }
}
