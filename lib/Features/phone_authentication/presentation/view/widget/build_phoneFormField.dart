import 'package:chatapp/core/utils/Colors.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';

class BuildPhoneFormField extends StatelessWidget {
  BuildPhoneFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: MyColors.lightGrey,
              ),
            ),
            child: Text(
              '${generateCountryFlag()}  +2',
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: MyColors.blue),
            ),
            child: TextFormField(
              style: const TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
              autofocus: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '01111111111',
                hintStyle:
                    TextStyle(color: MyColors.lightGrey, letterSpacing: 2),
              ),
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'phone must\'t empty';
                } else if (value.length > 11) {
                  return 'phone is too short';
                }
                return null;
              },
              onSaved: (value) {
                phoneNumber = value!;
              },
            ),
          ),
        ),
      ],
    );
  }
}

String generateCountryFlag() {
  String countryCode = 'eg';
  String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
      (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
  return flag;
}
