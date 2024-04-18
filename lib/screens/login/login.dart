// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/layout/home_layout.dart';
import 'package:mab/screens/login/login.dart';
import 'package:mab/screens/register/cubit/cubit.dart';
import 'package:mab/screens/register/cubit/states.dart';
import 'package:mab/shared/components/components.dart';

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
                          'REGISTER',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(color: Color.fromARGB(255, 27, 99, 113)),
                        ),
                        Text(
                          'Register now and enjoy the app',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
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
                          height: 30,
                        ),
                     ChoiceChip(
                      label: Text('Female'),
                      selected: _selectedGender == 'female',
                      onSelected: (selected) {
                     setState(() {
                     _selectedGender = selected ? 'female' : null;
                    });
                   },
                   ),
                    SizedBox(height: 10),
                     ChoiceChip(
                      label: Text('Male'),
                      selected: _selectedGender == 'male',
                      onSelected: (selected) {
                     setState(() {
                   _selectedGender = selected ? 'male' : null;
                  });
                },
                  ),
                   SizedBox(height: 20),
                   Text(
                  'Selected gender: ${_selectedGender ?? 'None'}',
                    style: TextStyle(fontSize: 18),
                    ),

                            SizedBox(
                          height: 30,
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
                          height: 30,
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
                          height: 30,
                        ),
                        Description(
                       title: Text('Enter Disease'),
                       padding: EdgeInsets.zero,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultbotton(
                          text: 'register',
                          onPress: () {
                            navigateTo(context, HomeLayout());
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already a user?",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                                onPressed: () {
                                  navigateTo(context, Login());
                                },
                                child: Text(
                                  'login'.toUpperCase(),
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

