import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:genie/services/chat_web_service.dart';
import 'package:genie/theme/colors.dart';
import 'package:genie/widgets/search_section.dart';
import 'package:genie/widgets/side_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // side navbar
          kIsWeb ? SideBar() : SizedBox(),
          Expanded(
            child: Padding(
              padding: !kIsWeb ? const EdgeInsets.all(8.0) : EdgeInsets.zero,
              child: Column(
                children: [
                  // search section
                  Expanded(child: SearchSection()),
                  Container(height: 20),
                  // footer
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Pro",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Enterprise",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Store",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Blog",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Careers",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "English (English)",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.footerGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
