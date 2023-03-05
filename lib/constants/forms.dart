import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

Widget textFormField({
  String? textLabel,
  String? textHint,
  double? height,
  double? width,
  TextEditingController? controller,
  String? Function(String?)? validatorForm,
  Widget? prefix,
  Widget? suffix,
  TextStyle? labelStyleForm,
  TextInputType? textType,
  required Color focusedColor,
  required Color enabledColor,
  bool? obscureText,
  required double paddingBottom, // add this parameter
}) {
  textLabel ?? (textLabel = "Enter Title");
  textHint ?? (textHint = "Enter Hint");
  height ?? (height = 50.0);
  textType ?? TextInputType.text;
  obscureText == null ? obscureText = true : false;
  //height !=null

  return Padding(
    padding: EdgeInsets.only(bottom: paddingBottom),
    child: SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        obscureText: obscureText,
        validator: validatorForm,
        controller: controller,
        keyboardType: textType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
          prefixIcon: prefix,
          suffixIcon: suffix,
          labelText: textLabel,
          labelStyle: labelStyleForm,
          hintText: textHint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.0),
            borderSide: BorderSide(
              color: focusedColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: enabledColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    ),
  );
}

Widget otpFormField({
  numberOfFields,
  required Color borderColor,
  fontSize,
  radiusOfFields,
  marginOfFields,
  double? width,
  double? height,
  //set to true to show as box or false to show as dash
  required bool showFieldAsBox,
  required onSubmit,
}) {
  fontSize ?? (fontSize = 70.0);
  radiusOfFields ?? (radiusOfFields = 15.0);
  marginOfFields ?? (marginOfFields = 20.0);

  return SizedBox(
    width: width,
    height: height,
    child: OtpTextField(
      fieldWidth: 77.0,
      numberOfFields: numberOfFields,
      borderColor: borderColor,
      showFieldAsBox: showFieldAsBox,
      textStyle: TextStyle(fontSize: fontSize),
      borderRadius: BorderRadius.all(Radius.circular(radiusOfFields)),
      margin: EdgeInsets.only(right: marginOfFields),
      onSubmit: onSubmit,
    ),
  );
}

Widget dropDownFormField({
  required List<String> dropDownValue,
  double? buttonWidth,
  double? buttonHeight,
  double? menuHeight,
  double? fontSize,
  Color? colorFont,
  String? labelHint,
}) {
  labelHint ?? (labelHint = "Select Item");
  fontSize ?? (fontSize = 14);
  buttonWidth ?? (buttonWidth = 140);
  buttonHeight ?? (buttonHeight = 40);
  menuHeight ?? (menuHeight = 40);
  return SizedBox(
    child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: Text(
          labelHint,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.grey,
          ),
        ),
        items: dropDownValue
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList(),
        onChanged: (value) {},
        buttonStyleData: const ButtonStyleData(
          height: 40,
          width: 140,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
      ),
    ),
  );
}

Widget searchBar({
  suggestions,
  labelText,
}) {
  return SizedBox(
    height: 300,
    width: 300,
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            // onChanged: (value) => _runFilter(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelText: 'Cari Nama Produk',
            ),
          ),
          Expanded(
            child: suggestions.isNotEmpty
                ? ListView.builder(
                    itemCount: suggestions.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(suggestions[index]["id"]),
                      color: Colors.amberAccent,
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: Text(
                          suggestions[index]["id"].toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        title: Text(suggestions[index]['name']),
                        subtitle: Text(
                            '${suggestions[index]["age"].toString()} years old'),
                      ),
                    ),
                  )
                : const Text(
                    'No results found',
                    style: TextStyle(fontSize: 24),
                  ),
          ),
        ],
      ),
    ),
  );
}
