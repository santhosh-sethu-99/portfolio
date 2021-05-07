import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// Logo
final logoPortfolio = AnimatedTextKit(
  animatedTexts: [
    ColorizeAnimatedText(
      'PORTFOLIO!',
      textStyle: TextStyle(
        fontSize: 40.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w100,
        letterSpacing: 3,
      ),
      colors: [
        Colors.teal,
        Colors.white,
      ],
    ),
  ],
  totalRepeatCount: 1,
  pause: Duration(milliseconds: 100),
);

const kTextStyle1 = TextStyle(
  fontSize: 20,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w300,
  color: Colors.white,
  letterSpacing: 2,
  height: 1.5,
);

const kTextStyle2 = TextStyle(
  fontSize: 30,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w100,
  color: Colors.teal,
  letterSpacing: 3,
);

final quote = Align(
  alignment: Alignment.center,
  child: AnimatedTextKit(
    animatedTexts: [
      TypewriterAnimatedText(
        'talk is cheap; show me the code;',
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'SourceCodePro',
          fontWeight: FontWeight.w100,
        ),
        speed: const Duration(milliseconds: 200),
        textAlign: TextAlign.center,
      ),
    ],
    totalRepeatCount: 1,
    pause: const Duration(milliseconds: 100),
  ),
);

// Greetings
const String kHello = 'Hellö,';

final profile = Container(
  height: 250,
  width: 250,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      image: AssetImage(
        'assets/images/profile.jpeg',
      ),
      fit: BoxFit.cover,
    ),
  ),
);
// About
const String kIAm = 'I\'m ';
const kFirstName = 'Santhosh Kumar';

const kLastName = 'Sethuraman';

const kAboutYou = '';

// Technical Skills
const kTechnicalSkills = [
  'Programming in C',
  'Flutter',
  'Dart',
  'Java',
];

// Soft Skills
const kSoftSkills = [
  'Self-Learning',
  'Constant Learning',
  'Logical Thinking',
  'Open Mindedness',
  'Adaptability',
  'Empathy',
  'Confidence',
  'Motivating',
];

const kHobbies = [
  'Photography',
  'Reading Books',
  'Cooking',
  'Travel',
];

// Experience
const kExperience = {
  'companyName': 'ChennaiHub',
  'fromDate': 'December, 2020',
  'toDate': 'March, 2021',
  'role': 'Software Developer Intern',
  'description':
      'This internship gained me some real world software engineering experience. I was assigned to work as a Mobile Developer. I was able to improve my code quality and logical abilities in this four month period. Worked closely with other team members to develop an mobile app for RealEstate Platform.'
};

// Links
const kGithub = 'https://github.com/santhosh-sethu-99';

const kLinkedin =
    'https://www.linkedin.com/in/santhosh-kumar-sethuraman-0b6076203';

const kPhoneNumber = '+91-9047097827';

const kEmailId = 'sethuramansanthoshkumar@gmail.com';
