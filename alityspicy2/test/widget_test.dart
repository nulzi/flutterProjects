import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';

void main() {
  showData();
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info = "요청수행 시작";
  print(info);
}

Future<String> accessData() async {
  String account = "";

  Duration time = Duration(seconds: 3);
  if (time.inSeconds > 2) {
    // sleep(time);
    await Future.delayed(time, () {
      account = "8,500";
      print(account);
    });
  } else {
    String info = "데이터를 가져왔습니다";
    print(info);
  }

  return account;
}

void fetchData(String account) {
  String info = "잔액은 $account만원 입니다.";
  print(info);
}
