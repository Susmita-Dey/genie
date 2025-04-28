import 'package:flutter/material.dart';
import 'package:genie/theme/colors.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButton({super.key, required this.icon, required this.text});

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Icon(widget.icon, color: AppColors.iconGrey, size: 20),
          Text(widget.text, style: TextStyle(color: AppColors.textGrey)),
        ],
      ),
    );
  }
}
