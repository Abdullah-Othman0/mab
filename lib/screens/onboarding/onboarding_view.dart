import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mab/screens/login/login.dart';
import 'package:mab/screens/register/register.dart';
import 'package:mab/shared/components/components.dart';
import 'package:mab/shared/styles/colors.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/logo-container.jpeg',
                  ).image,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      navigateTo(context, Register());
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kDarkTeal,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Sign up with email address',
                            style: TextStyle(
                              fontFamily: 'Plus Jakarta Sans',
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: Text(
                    'Or use other ways',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF57636C),
                          fontSize: 14,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(),
                      SizedBox(),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 32,
                          color: Colors.blueAccent,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          size: 32,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 32,
                        ),
                      ),
                      SizedBox(),
                      SizedBox()
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
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
                            'Login!',
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
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
