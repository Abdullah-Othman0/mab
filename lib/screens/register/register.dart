// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/home_layout.dart';
import 'package:mab/screens/register/cubit/cubit.dart';
import 'package:mab/screens/register/cubit/states.dart';
import 'package:mab/shared/components/components.dart';

import '../login/login.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
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
                                width: 160,
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
                              'Create account and start a new lifestyle.',
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
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
                                fun: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Enter your full name';
                                  }
                                  return null;
                                },
                                controler: nameController,
                                text: 'Name',
                                preIcon: Icons.person,
                                keyboard: TextInputType.name),
                            SizedBox(
                              height: 15,
                            ),
                            DefaultTextField(
                                fun: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Phone number';
                                  }
                                  return null;
                                },
                                controler: phoneController,
                                text: 'Phone',
                                preIcon: Icons.phone,
                                keyboard: TextInputType.phone),
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
                              height: 16,
                            ),
                            DefaultTextField(
                                fun: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Age';
                                  }
                                  return null;
                                },
                                controler: nameController,
                                text: 'Age',
                                preIcon: Icons.calendar_view_week_rounded,
                                keyboard: TextInputType.number),
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: [
                                  Text('Gender: '),
                                  ChoiceChip(
                                    label: Text('Female'),
                                    selected:
                                        true, //_selectedGender == 'female',
                                    onSelected: (selected) {
                                      //  setState(() {
                                      //  _selectedGender = selected ? 'female' : null;
                                      // });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  ChoiceChip(
                                    label: Text('Male'),
                                    selected:
                                        false, //_selectedGender == 'male',
                                    onSelected: (selected) {
                                      //    setState(() {
                                      //  _selectedGender = selected ? 'male' : null;
                                      // });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            DefaultTextField(
                                fun: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Height';
                                  }
                                  return null;
                                },
                                controler: nameController,
                                text: 'Height',
                                preIcon: Icons.arrow_circle_up,
                                keyboard: TextInputType.number),
                            SizedBox(
                              height: 16,
                            ),
                            DefaultTextField(
                                fun: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'Weight';
                                  }
                                  return null;
                                },
                                controler: nameController,
                                text: 'Weight',
                                preIcon: Icons.arrow_circle_up,
                                keyboard: TextInputType.number),
                            SizedBox(
                              height: 20,
                            ),
                            defaultbotton(
                              text: 'register',
                              onPress: () {
                                navigateAndFinish(context, HomeLayout());
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: const Color(0xFF57636C),
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      navigateTo(context, Login());
                                    },
                                    child: Text(
                                      'Log in',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.black,
                                            decoration:
                                                TextDecoration.underline,
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
