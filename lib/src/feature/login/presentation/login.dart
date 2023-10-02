import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:flutter_application_1/src/feature/login/presentation/login_controller.dart';
import 'package:flutter_application_1/src/utils/util_validator.dart';
import 'package:get/get.dart';

class CreateAccount3Widget extends StatefulWidget {
  const CreateAccount3Widget({Key? key}) : super(key: key);

  @override
  _CreateAccount3WidgetState createState() => _CreateAccount3WidgetState();
}

class _CreateAccount3WidgetState extends State<CreateAccount3Widget> with TickerProviderStateMixin {
  final _formKeyUsername = GlobalKey<FormState>();
  final _formKeyPassword = GlobalKey<FormState>();
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 255, 0),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: 100,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 153, 0),
                      Color.fromARGB(255, 208, 255, 0),
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0.87, -1),
                    end: AlignmentDirectional(-0.87, 1),
                  ),
                ),
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 280),
                      Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: 570,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(51, 255, 255, 255),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(32, 32, 32, 32),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                      child: Container(
                                        width: double.infinity,
                                        child: Form(
                                          key: _formKeyUsername,
                                          child: TextFormField(
                                            controller: loginController.usernameController,
                                            validator: ValidatorUtil.compose([
                                              ValidatorUtil.required("Please enter some text"),
                                              ValidatorUtil.minLength(4, "Requires at least 4 characters"),
                                              ValidatorUtil.maxLength(50, "Characters must not exceed 50 characters.")
                                            ]),
                                            autofocus: true,
                                            autofillHints: const [AutofillHints.username],
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Username',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  width: 2,
                                                ),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 255, 153, 0),
                                                  width: 2,
                                                ),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 255, 153, 0),
                                                  width: 2,
                                                ),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(255, 255, 153, 0),
                                                  width: 2,
                                                ),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              filled: true,
                                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                                            ),
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Form(
                                          key: _formKeyPassword,
                                          child: Obx(() => TextFormField(
                                                controller: loginController.passwordController,
                                                validator: ValidatorUtil.compose([
                                                  ValidatorUtil.required("Please enter some text"),
                                                  ValidatorUtil.minLength(4, "Requires at least 4 characters"),
                                                  ValidatorUtil.maxLength(50, "Characters must not exceed 50 characters.")
                                                ]),
                                                autofocus: true,
                                                obscureText: !loginController.isTogglePassword.value,
                                                autofillHints: const [AutofillHints.password],
                                                decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color.fromARGB(255, 255, 153, 0),
                                                      width: 2,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  errorBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color.fromARGB(255, 255, 153, 0),
                                                      width: 2,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color.fromARGB(255, 255, 153, 0),
                                                      width: 2,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  filled: true,
                                                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                                                  suffixIcon: InkWell(
                                                    onTap: () => loginController.togglePassword(),
                                                    focusNode: FocusNode(skipTraversal: true),
                                                    child: Obx(() => loginController.isTogglePassword.value
                                                        ? const Icon(
                                                            Icons.visibility_outlined,
                                                            color: Color.fromARGB(255, 0, 0, 0),
                                                            size: 24,
                                                          )
                                                        : const Icon(
                                                            Icons.visibility_off_outlined,
                                                            color: Color.fromARGB(255, 0, 0, 0),
                                                            size: 24,
                                                          )),
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ),
                                    ),
                                    AnimatedButton(
                                      onPressed: () async {
                                        if (_formKeyUsername.currentState!.validate() && _formKeyPassword.currentState!.validate()) {
                                          await loginController.loginAccount();
                                        }
                                      },
                                      width: 150,
                                      color: Colors.redAccent,
                                      shadowDegree: ShadowDegree.dark,
                                      enabled: true,
                                      child: const Text(
                                        'Enter',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
