import 'package:flutter/material.dart';

class HeyYouTextFormField extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  final bool isPassword;
  final String initial;
  final Function(String value) onChange;
  const HeyYouTextFormField(
    this.hintText, {
    required this.onChange,
    this.icon,
    this.isPassword = false,
    this.initial = '',
    super.key,
  });

  @override
  createState() => _HeyYouTextFormFieldState();
}

class _HeyYouTextFormFieldState extends State<HeyYouTextFormField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initial,
      focusNode: _focusNode,
      obscureText: widget.isPassword ? _obscureText : false,
      cursorColor: const Color.fromARGB(255, 0, 204, 102),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Feather Bold',
          fontSize: 14,
        ),
        filled: true,
        fillColor:
            _isFocused ? Colors.white : const Color.fromARGB(40, 0, 204, 102),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 1.0,
            color: Color.fromARGB(255, 0, 204, 102),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromARGB(255, 0, 204, 102),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        prefixIcon: widget.icon != null
            ? Icon(
                widget.icon,
                color: _isFocused
                    ? const Color.fromARGB(255, 0, 204, 102)
                    : Colors.grey.shade400,
              )
            : null,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: _isFocused
                      ? const Color.fromARGB(255, 0, 204, 102)
                      : Colors.grey.shade400,
                ),
                onPressed: _toggleVisibility,
              )
            : null,
      ),
      onChanged: (value) {
        widget.onChange(value);
      },
    );
  }
}
