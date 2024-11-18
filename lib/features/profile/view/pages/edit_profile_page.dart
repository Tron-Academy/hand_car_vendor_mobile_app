import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/widgets/button_widget.dart';
import 'package:handcar_ventor/core/widgets/outline_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/text_label_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/textfield_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfilePage extends HookConsumerWidget {
  static const route = "/edit-profile";
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final nameController = useTextEditingController(); //Name Controller
    final emailController = useTextEditingController(); //Email Controller
    final phoneController = useTextEditingController(); //Phone Controller
    final whatsappController = useTextEditingController(); //Whatsapp Number Controller
    final passwordController = useTextEditingController(); //Password Controller
    final locationController = useTextEditingController(); //Location Controller

    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: AppBar(
        backgroundColor: context.colors.background,
        title: Text("Edit Profile", style: context.typography.h3),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.space.space_200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                //Profile Image
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-oHKPn2K_N_VcudUb7nCNNZDMtiXJdqBeULs2Vqmx6xQsqoFt9xFWE-A&s'),
                ),
              ),
              const TextLabel(label: "Full Name"),
              SizedBox(height: context.space.space_100),
              //Name Field
              TextFieldWidget(
                controller: nameController,
                hintText: "Enter Your Name",
              ),
              SizedBox(height: context.space.space_200),
              //Email Field
              const TextLabel(label: "Email"),
              SizedBox(height: context.space.space_100),
              TextFieldWidget(
                controller: emailController,
                hintText: "Enter Your Email",
              ),
              SizedBox(height: context.space.space_200),
              //Phone Number Field
              const TextLabel(label: "Phone Number"),
              SizedBox(height: context.space.space_100),
              TextFieldWidget(
                controller: phoneController,
                hintText: "Enter Your Phone Number",
              ),
              SizedBox(height: context.space.space_200),
              //Whatsapp Number Field
              const TextLabel(label: "Whatsapp Number"),
              SizedBox(height: context.space.space_100),
              TextFieldWidget(
                controller: whatsappController,
                hintText: "Enter Your Whatsapp Number",
              ),
              SizedBox(height: context.space.space_200),
              //Password Field
              const TextLabel(label: "Password"),
              SizedBox(height: context.space.space_100),
              TextFieldWidget(
                controller: passwordController,
                hintText: "Enter Your Password",
              ),
              SizedBox(height: context.space.space_200),
              //Location Field
              const TextLabel(label: "Location"),
              SizedBox(height: context.space.space_100),
              TextFieldWidget(
                controller: locationController,
                hintText: "Enter Your Location",
              ),
              SizedBox(height: context.space.space_200),
              //Update and Cancel Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Cancel Button
                  OutlineButtonWidget(
                    label: "Cancel",
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  //Update Button
                  ButtonWidget(
                    label: "Update Profile",
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
