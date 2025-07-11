import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medic_app/doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  setupGetIt();
  // To fix texts being hidden bug in flutter screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}

