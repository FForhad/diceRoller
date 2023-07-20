import 'package:flutter/material.dart';
import 'package:basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 40, 7, 107), Color.fromARGB(255, 28, 83, 177)),
      ),
    ),
  );
}

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: GradientContainer(
//           colors: [
//             Colors.purpleAccent,
//             Colors.blueAccent,
//           ],
//         ),
//       ),
//     ),
//   );
// }
