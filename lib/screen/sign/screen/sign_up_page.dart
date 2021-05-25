import 'dart:io';

import 'package:doing_app/screen/sign/screen/sign_up_succes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nickNameTextEditingController = TextEditingController();
  bool checkTest = false;
  bool checkAge = false;
  bool checkTermsAndConditions = false;
  bool checkCollectPersonalInformation = false;
  bool checkMarketingUtilization = false;
  List<bool> checkList = [];
  String btnCheckBoxSelect =
      "assets/svgs/buttons_toggle_checkbox_btn_checkbox_selected.svg";
  String btnCheckBoxUnSelect =
      "assets/svgs/buttons_toggle_checkbox_btn_checkbox_unselected.svg";
  String btnCheckSelect =
      "assets/svgs/buttons_toggle_check_btn_check_selected.svg";
  String btnCheckUnSelect =
      "assets/svgs/buttons_toggle_check_btn_check_unselected.svg";
  File _image;

  Future getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  void initState() {
    checkList.add(false);
    checkList.add(false);
    checkList.add(false);
    checkList.add(false);
    checkList.add(false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f8),
//      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(child: test()),
      ),
    );
  }

  Widget test() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 133,
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Center(
              child: _image == null
                  ? SvgPicture.asset(
                      "assets/svgs/img_profile_large_default.svg")
                  : ClipRRect(
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Image.file(
                          _image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.black,
//               ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80, top: 100),
              // color: Colors.redAccent,
              height: 80,
              width: 80,
              child: InkResponse(
                onTap: () {
                  getImage();
                },
                child: Image.asset("assets/images/ico_camera.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 47,
        ),
        Container(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            "사용자 닉네임",
            style: TextStyle(fontSize: 14),
          ),
        ),
        checkNickName(),
        SizedBox(
          height: 24,
        ),
        Container(
          color: Colors.black,
          height: 1,
        ),
        SizedBox(
          height: 24,
        ),
        allAgree(),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 1,
            margin: EdgeInsets.only(left: 24, right: 24),
            color: Colors.black,
            height: 1,
          ),
        ),
        checkAgree(0, "[필수] 만 14세 이상입니다."),
        checkAgree(1, "[필수] 이용 약관 동의"),
        checkAgree(2, "[필수] 개인정보 수집 및 이용 동의"),
        checkAgree(3, "[필수] 마케팅 이용 수신 동의"),
        registrationButton(),
      ],
    );
  }

  Widget registrationButton() {
    return Container(
//      height: MediaQuery.of(context).size.height * 0.1,
      height: 64,
      margin: EdgeInsets.only(left: 12, right: 12, top: 44, bottom: 40),
      decoration: BoxDecoration(
        color: Color(0xff2cff3c3c),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkResponse(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<SignUpSucces>(
                builder: (BuildContext context) => SignUpSucces()),
          );
        },
        child: Center(
          child: Text(
            "가입완료",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Widget checkAgree(int index, String text) {
    return Container(
      margin: EdgeInsets.only(
        left: 24,
        top: 16,
      ),
      child: Row(
        children: [
          InkResponse(
            child: checkList[index] == true
                ? SvgPicture.asset(btnCheckSelect)
                : SvgPicture.asset(btnCheckUnSelect),
            onTap: () {
              setState(() {
                checkList[index] = !checkList[index];
                print(checkList[index]);
              });
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Text(text),
          ),
          Expanded(child: Container()),
          Container(
              margin: EdgeInsets.only(right: 24),
              child: InkResponse(
                child: Text(
                  "보기",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onTap: () {},
              )),
        ],
      ),
    );
  }

  Widget allAgree() {
    return Container(
      margin: EdgeInsets.only(
        left: 24,
        bottom: 16,
      ),
      child: Row(
        children: [
          InkResponse(
            child: checkList[4] == true
                ? SvgPicture.asset(btnCheckBoxSelect)
                : SvgPicture.asset(btnCheckBoxUnSelect),
            onTap: () {
              setState(() {
                //이게 뭐지
                checkList[4] = !checkList[4];
                for (int i = 0; i < checkList.length - 1; i++) {
                  checkList[i] = checkList[4];
                }
              });
            },
          ),
          Container(
            padding: EdgeInsets.only(left: 8),
            child: Text("모두 동의하기"),
          ),
        ],
      ),
    );
  }

  Widget checkNickName() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
//            color: Colors.black
      ),
//          color: Colors.black,
      margin: EdgeInsets.only(left: 24, right: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 24),
              child: TextField(
                controller: nickNameTextEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2자 ~ 10자로 입력해주세요.",
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 8),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.5, color: Colors.black),
              ),
              onPressed: () {},
              child: Text(
                "중복확인",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
