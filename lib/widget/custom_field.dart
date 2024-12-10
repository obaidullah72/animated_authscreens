import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool isPassword;
  final List<Color> gradientColors;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.hint,
    required this.gradientColors,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        style: TextStyle(
          color: Color(0xFF1D1C1D),
        ),
        decoration: InputDecoration(
          prefixIcon: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            color: Color(0xFF1D1C1D).withOpacity(0.5),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16,),
        ),
      ),
    );
  }
}
