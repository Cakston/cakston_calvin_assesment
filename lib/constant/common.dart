import 'package:flutter/material.dart';

List<Widget> textAbove = [
  RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 35.0,
      color: Colors.white,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Spedzaj czas'),
      TextSpan(text: '\nkreatywnie!', style: TextStyle(fontWeight: FontWeight.bold,)),
    ],
  ),
),
  RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 35.0,
      color: Colors.white,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Bierz udział', style: TextStyle(fontWeight: FontWeight.bold,)),
      TextSpan(text: '\n wydarzeniach!')
    ],
  ),
),
RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 35.0,
      color: Colors.white,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Poznawaj'),
      TextSpan(text: '\n nieodkryte'),
      TextSpan(text: ' szlaki!', style: TextStyle(fontWeight: FontWeight.bold,))
    ],
  ),
),
RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 35.0,
      color: Colors.white,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Ustawiaj'),
      TextSpan(text: '\n przypomnienia!', style: TextStyle(fontWeight: FontWeight.bold,))
    ],
  ),
),
  RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
      style: TextStyle(
        fontSize: 35.0,
        color: Colors.white,
      ),
      children: <TextSpan>[
        TextSpan(text: 'Bàdź'),
        TextSpan(text: ' na bieżàco!', style: TextStyle(fontWeight: FontWeight.bold,))
      ],
    ),
  ),
RichText(
  textAlign: TextAlign.center,
  text: const TextSpan(
    style: TextStyle(
      fontSize: 35.0,
      color: Colors.white,
    ),
    children: <TextSpan>[
      TextSpan(text: 'Zlap'),
      TextSpan(text: ' swój rytm!', style: TextStyle(fontWeight: FontWeight.bold,))
    ],
  ),
),

];