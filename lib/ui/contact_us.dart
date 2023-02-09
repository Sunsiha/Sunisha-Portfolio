import 'package:flutter/material.dart';
import 'package:portfolio/config/strings.dart';
import 'package:portfolio/ui/icon.dart';
import 'package:portfolio/utils/email_utils.dart';

import '../config/colors.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../utils/extensions.dart';
import 'responsive_widget.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(AppStrings.h002GetInTouch,
                style: AppStyles.title.copyWith(
                  color: AppColors.primaryColor,
                  height: 1.8,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.fontFamilyPoppins,
                )),
            Container(width: 100, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactInfo(
                        'icons/email.png',
                        AppStrings.l004MailMe,
                        AppConstants.mail,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/call.png',
                        AppStrings.l005CallMe,
                        AppConstants.phone,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/pin.png',
                        AppStrings.l006VisitMe,
                        AppConstants.location,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: _buildContactForm(context),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              AppStrings.h002GetInTouch,
              style: AppStyles.title.copyWith(
                color: AppColors.primaryColor,
                height: 1.8,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: AppConstants.fontFamilyPoppins,
              ),
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      'icons/email.png',
                      AppStrings.l004MailMe,
                      AppConstants.mail,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/call.png',
                      AppStrings.l005CallMe,
                      AppConstants.phone,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/pin.png',
                      AppStrings.l006VisitMe,
                      AppConstants.location,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                _buildContactForm(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String imagePath, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(imagePath, color: AppColors.black.withOpacity(.7), size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.black,
                  fontFamily: AppConstants.fontFamilyPoppins,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(
                  color: AppColors.black.withOpacity(.7),
                  fontFamily: AppConstants.fontFamilyPoppins,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContactForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.m001,
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontFamily: AppConstants.fontFamilyPoppins,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: AppConstants.fontFamilyPoppins),
                      controller: _nameController,
                      validator: (text) {
                        return (text!.isValidName())
                            ? null
                            : 'Please insert valid name!';
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: TextFormField(
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: AppConstants.fontFamilyPoppins),
                      controller: _emailController,
                      validator: (text) {
                        return (text!.isValidEmail)
                            ? null
                            : 'Please insert valid email!';
                      },
                      decoration: InputDecoration(
                        hintText: 'Your Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 1.5,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: AppConstants.fontFamilyPoppins),
                controller: _contentController,
                minLines: 3,
                maxLines: 10,
                validator: (text) {
                  return (text!.isValidName(minLength: 10))
                      ? null
                      : 'Please insert valid message!, at least 10 characters';
                },
                decoration: InputDecoration(
                  hintText: 'Your Message',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primaryColor,
                  elevation: 3,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(100, 40), //////// HERE
                ),
                onPressed: _sendMail,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text('Send',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            height: 1.8,
                            fontFamily: AppConstants.fontFamilyPoppins,
                          )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void _sendMail() async {
    bool isValidForm = _formKey.currentState!.validate();
    if (!isValidForm) return;
    String subject =
        "${_nameController.text.trim()} : ${_emailController.text.trim()}";
    String response = await EmailUtils().launchEmailSubmission(
        toEmail: AppConstants.mail,
        subject: subject,
        body: _contentController.text.trim().toString());
    if (response == 'success') {
      _nameController.text = '';
      _emailController.text = '';
      _contentController.text = '';
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
