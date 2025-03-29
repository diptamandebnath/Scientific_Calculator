import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CalculatorButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final bool isOperation;

  const CalculatorButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isOperation = false,
  });

  @override
  _CalculatorButtonState createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color: widget.isOperation
                ? ( _isHovered ? AppColors.pink.withOpacity(0.8) : AppColors.pink)
                : ( _isHovered ? AppColors.buttonBackground.withOpacity(0.8) : AppColors.buttonBackground),
            border: Border.all(color: AppColors.buttonBorder),
            borderRadius: BorderRadius.circular(20),
            boxShadow: _isHovered
                ? [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 4),
              ),
            ]
                : [],
          ),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: widget.isOperation
                    ? Colors.yellow
                    : AppColors.buttonText,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
