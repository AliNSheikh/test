import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  final String text;
  final void Function()? onTap;
  final TextStyle textStyle;
  final bool showPassword;

  TextForm({
    Key? key,
    required this.onTap,
    required this.text,
    this.textStyle = const TextStyle(
      fontSize: 16,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
    this.showPassword = false,
  }) : super(key: key);

  @override
  _TextFormState createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(7),
            ),
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextFormField(
              textAlign: TextAlign.left,
              obscureText: widget.showPassword ? _obscureText : false,
              style: TextStyle(color: Colors.grey), // Set the active color here
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.text,
                hintStyle: widget.textStyle,
                suffixIcon: widget.showPassword

                    ? IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
