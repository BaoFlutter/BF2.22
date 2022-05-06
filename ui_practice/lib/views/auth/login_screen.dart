import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 220),
      child: ListView(
        children: [
          Text(
            'Log In',
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text(
                  'Email',

                ),
                TextField(
                  textFieldType: FxTextFieldType.email,
                  textFieldStyle: FxTextFieldStyle.underlined,
                  autoIcon: false,
                  filled: false,
                  labelText: "Your email id",
                  contentPadding: FxSpacing.fromLTRB(0, 8, 4, 20),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onBackground
                        .withAlpha(140),
                  ),
                  isCollapsed: true,
                  enabledBorderColor:
                  theme.colorScheme.onBackground.withAlpha(160),
                  controller: controller.emailController,
                  focusedBorderColor: theme.colorScheme.primary,
                  floatingLabelBehavior:
                  FloatingLabelBehavior.never,
                  cursorColor: theme.colorScheme.primary,
                ),
                FxSpacing.height(16),
                FxText.bodyLarge(
                  'Password',
                  fontWeight: 600,
                ),
                FxTextField(
                  maxLines: 1,
                  textFieldType: FxTextFieldType.password,
                  textFieldStyle: FxTextFieldStyle.underlined,
                  autoIcon: true,
                  filled: false,
                  labelText: "Password",
                  contentPadding: FxSpacing.fromLTRB(0, 8, 4, 2),
                  labelStyle: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.onBackground
                        .withAlpha(140),
                  ),
                  isCollapsed: true,
                  allowSuffixIcon: true,
                  controller: controller.passwordController,
                  focusedBorderColor: theme.colorScheme.primary,
                  enabledBorderColor:
                  theme.colorScheme.onBackground.withAlpha(160),
                  floatingLabelBehavior:
                  FloatingLabelBehavior.never,
                  cursorColor: theme.colorScheme.primary,
                  suffixIconColor: theme.colorScheme.primary,
                ),
                FxSpacing.height(16),
                Align(
                  alignment: Alignment.centerRight,
                  child: FxButton.text(
                      onPressed: () {
                        controller.goToForgotPasswordScreen();
                      },
                      splashColor:
                      theme.colorScheme.primary.withAlpha(40),
                      child: FxText.bodySmall("Forgot Password?",
                          color: theme.colorScheme.primary)),
                ),
                FxSpacing.height(16),
                FxButton.block(
                  elevation: 0,
                  borderRadiusAll: Constant.buttonRadius.large,
                  onPressed: () {
                    controller.goToHomeScreen();
                  },
                  backgroundColor: theme.colorScheme.primary,
                  child: FxText.titleMedium(
                    "LOG IN",
                    fontWeight: 700,
                    color: theme.colorScheme.onPrimary,
                    letterSpacing: 0.4,
                  ),
                ),
                FxSpacing.height(16),
                Center(
                  child: FxButton.text(
                    onPressed: () {
                      controller.goToRegisterScreen();
                    },
                    splashColor:
                    theme.colorScheme.primary.withAlpha(40),
                    child: FxText.bodySmall("I haven\'t an account",
                        decoration: TextDecoration.underline,
                        color: theme.colorScheme.primary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  }
}
