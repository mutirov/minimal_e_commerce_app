import 'package:flutter/material.dart';

class AvailableSize extends StatefulWidget {
  final String size;
  const AvailableSize({super.key, required this.size});

  @override
  State<AvailableSize> createState() => _AvailableSizeState();
}

class _AvailableSizeState extends State<AvailableSize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color:isSelected ? Colors.red : Colors.transparent,
        ),
        child: Center(
          child: Text(
            widget.size,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}