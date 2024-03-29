
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../models/app_user.dart';
import '../../../view_models/firbase_auth_provider.dart';
import '../../../views/change_profile_screen.dart';
import '../../constants.dart';
import '../../utils/utils.dart';
class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
    required this.user,
  }) : super(key: key);

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          amzChatIcon,
          width: 34,
          height: 34,
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: secondaryColor,
          backgroundImage:
          user.photoUrl != null ? NetworkImage(user.photoUrl!) : null,
          child: user.photoUrl != null
              ? null
              : Text(Utils.nameInit(user.displayName ?? ""),
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
        PopupMenuButton<int>(
          offset: Offset(0, 24),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onSelected: (val) {
            if (val == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ChangeProfileScreen()));
            } else {
              context.read<FirebaseAuthProvider>().signOut();
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 0,
                child: ListTile(
                  leading: SvgPicture.asset(
                    editIcon,
                    height: 24,
                    width: 24,
                  ),
                  title: Text("Edit Profile"),
                )),
            PopupMenuItem(
                value: 1,
                child: ListTile(
                  leading: SvgPicture.asset(
                    signOutIcon,
                    height: 24,
                    width: 24,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                )),
          ],
          child: SvgPicture.asset(
            optionIcon,
            height: 24,
            width: 24,
            color: primaryColor,
          ),
        )
      ],
    );
  }
}