import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.image,
  });

  final String image;
  final String userName;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        userName,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        userEmail,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
