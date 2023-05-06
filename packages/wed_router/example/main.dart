import 'dart:io';

import 'package:wed_router/wed_router.dart';

void main() {
  final routeConfiguration = buildPageConfiguration(Directory.current);
  stdout.writeln(routeConfiguration.toString());
}
