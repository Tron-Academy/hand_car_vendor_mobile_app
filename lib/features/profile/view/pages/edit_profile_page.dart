import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/widgets/button_widget.dart';
import 'package:handcar_ventor/core/widgets/outline_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/text_label_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/textfield_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.background,
        title: Text("Edit Profile", style: context.typography.h3),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.space.space_200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-oHKPn2K_N_VcudUb7nCNNZDMtiXJdqBeULs2Vqmx6xQsqoFt9xFWE-A&s'),
              ),
            ),
            const TextLabel(label: "Full Name"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Name"),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Email"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Email"),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Phone Number"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Phone Number"),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Whatsapp Number"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Whatsapp Number"),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Password"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Password"),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Location"),
            SizedBox(height: context.space.space_100),
            const TextFieldWidget(hintText: "Enter Your Location"),
            SizedBox(height: context.space.space_200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButtonWidget(
                  label: "Cancel",
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ButtonWidget(
                  label: "Update Profile",
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
