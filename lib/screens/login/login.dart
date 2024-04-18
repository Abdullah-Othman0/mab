// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/screens/dashboard.dart';
import 'package:mab/screens/register/cubit/cubit.dart';
import 'package:mab/screens/register/cubit/states.dart';
import 'package:mab/shared/components/components.dart';

import '../register/register.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          'Register now and enjoy the app',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        DefaultTextField(
                            fun: (String? value) {
                              if (value!.isEmpty) {
                                return 'Enter Username or Email address';
                              }
                              return null;
                            },
                            controler: emailController,
                            text: 'Email address',
                            preIcon: Icons.alternate_email,
                            keyboard: TextInputType.emailAddress),
                        SizedBox(
                          height: 15,
                        ),
                        DefaultTextField(
                          fun: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Password';
                            }
                            return null;
                          },
                          controler: passwordController,
                          text: 'Password',
                          preIcon: Icons.lock_outline,
                          secure: RegisterCubit.get(context).isPassword,
                          sufIcon: RegisterCubit.get(context).suffIcon,
                          sufPressed: () {
                            RegisterCubit.get(context).changePassword();
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultbotton(
                          text: 'Login',
                          onPress: () {
                            navigateTo(context, DashboardScreen());
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Not a user?",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                                onPressed: () {
                                  navigateTo(context, Register());
                                },
                                child: Text(
                                  'Register'.toUpperCase(),
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
