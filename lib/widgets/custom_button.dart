// import 'package:flutter/material.dart';
// import '../colors.dart';
//
// class CustomButton extends StatelessWidget {
//   final String label;
//   final VoidCallback? onPressed;
//   final double? verticalPadding;
//   final Color? backgroundColor;
//
//   const CustomButton({super.key,
//     required this.label,
//     this.onPressed,
//     this.verticalPadding,
//     this.backgroundColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width:double.infinity,
//         height: 48,
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(
//               backgroundColor ?? AppColors.primaryColor, // Use given color or default
//             ),
//             foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
//             overlayColor: MaterialStateProperty.resolveWith<Color?>(
//                   (Set<MaterialState> states) {
//                 if (states.contains(MaterialState.pressed)) {
//                   return Colors.white.withOpacity(0.3); // Ripple effect color and opacity
//                 }
//                 return null; // Default for other states
//               },
//             ),
//           ),
//           child: Text(
//             label,
//             style: TextStyle(
//               fontSize: 16,
//               fontFamily: 'Nunito',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//       );
//   }
// }
import 'package:flutter/material.dart';
import '../colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? verticalPadding;
  final List<Color>? gradientColors;

  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.verticalPadding,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              vertical: verticalPadding ?? 0,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // Adjust for rounded corners
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent), // Transparent to show gradient
          foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors ??
                  [AppColors.primaryColor, AppColors.primaryLightColor], // Default gradient
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(50), // Match button's shape
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
