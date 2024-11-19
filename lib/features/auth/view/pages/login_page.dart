import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/widgets/button_widget.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/navigation_page.dart';
import 'package:handcar_ventor/gen/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  static const route = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controllers
    final phoneController = useTextEditingController();
    // Password Controller  
    final passwordController = useTextEditingController();
    // Visibility State
    final isVisible = useState(false);

    // Watch the authentication state

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(context.space.space_200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(Assets.icons.handCarIcon),
              ),
              SizedBox(height: context.space.space_200),
              Padding(
                padding: EdgeInsets.only(left: context.space.space_200),
                child: Text(
                  "Email",
                  style: context.typography.h3,
                ),
              ),
              SizedBox(height: context.space.space_200),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.space.space_200),
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: context.space.space_200),
              Padding(
                padding: EdgeInsets.only(left: context.space.space_200),
                child: Text(
                  "Password",
                  style: context.typography.h3,
                ),
              ),
              SizedBox(height: context.space.space_200),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.space.space_200),
                child: TextField(
                  controller: passwordController,
                  obscureText: !isVisible.value,
                  decoration:  InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Enter Password',
                      prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        isVisible.value = !isVisible.value;
                      },
                      icon: Icon(isVisible.value ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              SizedBox(height: context.space.space_200),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: context.space.space_200),
                child: SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                    label: "Login",
                    onTap: () async {
                      context.go(NavigationPage.route);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
