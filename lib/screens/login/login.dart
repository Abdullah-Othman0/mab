// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/home_layout.dart';
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
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(166, 24, 170, 153),
                              Colors.transparent
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xCCFFFFFF),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/logo-login.jpeg',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: Text(
                              'MEDIOS',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF101213),
                                    fontSize: 22,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                            child: Text(
                              'Use the account below to sign in.',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DefaultTextField(
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DefaultTextField(
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
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: defaultbotton(
                        radius: 32,
                        text: 'Login',
                        onPress: () {
                          navigateAndFinish(context, HomeLayout());
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Doesn't have an account?",
                          style:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF57636C),
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        TextButton(
                            onPressed: () {
                              navigateTo(context, Register());
                            },
                            child: Text(
                              'Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.black,
                                    decoration: TextDecoration.underline,
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
