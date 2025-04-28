import 'package:flutter/material.dart';
import 'package:genie/theme/colors.dart';
import 'package:genie/widgets/search_bar_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Where knowledge begins",
          style: GoogleFonts.ibmPlexMono(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1.2,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 32),
        Container(
          width: 700,
          decoration: BoxDecoration(color: AppColors.searchBar),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search anything...",
                  hintStyle: TextStyle(fontSize: 16, color: AppColors.textGrey),
                  border: InputBorder.none,
                ),
              ),
              Row(
                children: [
                  SearchBarButton(
                    icon: Icons.auto_awesome_outlined,
                    text: "Focus",
                  ),
                  const SizedBox(width: 12),
                  SearchBarButton(
                    icon: Icons.add_circle_outline_outlined,
                    text: "Attach",
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(27, 185, 206, 1),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.background,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
