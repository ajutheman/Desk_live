import 'package:flutter/cupertino.dart';

screenHeight(BuildContext context, {double dividedBy = 1}) {
  return MediaQuery.of(context).size.height / dividedBy;
}

screenWidth(BuildContext context, {double dividedBy = 1}) {
  return MediaQuery.of(context).size.width / dividedBy;
}
