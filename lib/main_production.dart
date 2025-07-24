import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medic_app/core/helper/extensions.dart';
import 'package:medic_app/doc_app.dart';

import 'core/di/dependency_injection.dart';
import 'core/helper/constants.dart';
import 'core/helper/shared_pref_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(const DocApp());
}

checkIfLoggedInUser() async {
  String userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
