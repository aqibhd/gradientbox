import 'dart:math';
import 'dart:ui';

class GradientColors {
  final List<Color> colors;
  GradientColors(this.colors);

  factory GradientColors.random() {
    return _gradientColors[Random().nextInt(_gradientColors.length)];
  }

  // After adding GradientColors variable, add that variable
  // to this list as shown below:

  static final List<GradientColors> _gradientColors = [
    flare,
    summer,
    cosmicFusion,
    radioactiveHeat,
    iceToFire,
    skySea,
    harvey,
    scooter,
    newBlu,
    witchingHour,
    ultraViolet,
    burningOrange,
    wireTap,
    blueRaspberry,
    sublimeLight,
    lawrencium,
    argon,
    telegram,
    blueSkies,
    coal,
    html,
    pacificGreen,
    minimalRed,
  ];

  // Don't forget commas and semi-colons...and try to follow the format.
  //
  // Add GradientColors variable below:
  //

  static GradientColors flare = GradientColors(const [
    Color(0xFFf12711),
    Color(0xFFf5af19),
  ]);
  static GradientColors minimalRed = GradientColors(const [
    Color(0xFFf00000),
    Color(0xFFdc281e),
  ]);
  static GradientColors summer = GradientColors(const [
    Color(0xFFF44336),
    Color(0xFFFFC107),
    Color(0xFF4CAF50),
  ]);
  static GradientColors cosmicFusion = GradientColors(const [
    Color(0xFFff00cc),
    Color(0xFF333399),
  ]);
  static GradientColors iceToFire = GradientColors(const [
    Color(0xFF72C6EF),
    Color(0xFF004E8F),
  ]);
  static GradientColors radioactiveHeat = GradientColors(const [
    Color(0xFFF7941E),
    Color(0xFF72C6EF),
    Color(0xFF00A651),
  ]);
  static GradientColors skySea = GradientColors(const [
    Color(0xFFE4E5E6),
    Color(0xFF00416A),
  ]);
  static GradientColors harvey = GradientColors(const [
    Color(0xFF1f4037),
    Color(0xFF99f2c8),
  ]);
  static GradientColors scooter = GradientColors(const [
    Color(0xFF7F7FD5),
    Color(0xFF86A8E7),
    Color(0xFF91EAE4),
  ]);
  static GradientColors witchingHour = GradientColors(const [
    Color(0xFFC31432),
    Color(0xFF240b36),
  ]);
  static GradientColors ultraViolet = GradientColors(const [
    Color(0xFF654ea3),
    Color(0xFFeaafc8),
  ]);
  static GradientColors burningOrange = GradientColors(const [
    Color(0xFFFF416C),
    Color(0xFFFF4B2B),
  ]);
  static GradientColors wireTap = GradientColors(const [
    Color(0xFF8A2387),
    Color(0xFFE94057),
    Color(0xFFF27121),
  ]);
  static GradientColors blueRaspberry = GradientColors(const [
    Color(0xFF00B4DB),
    Color(0xFF0083B0),
  ]);
  static GradientColors sublimeLight = GradientColors(const [
    Color(0xFFFC5C7D),
    Color(0xFF6A82FB),
  ]);
  static GradientColors lawrencium = GradientColors(const [
    Color(0xFF0f0c29),
    Color(0xFF302b63),
    Color(0xFF24243e),
  ]);
  static GradientColors argon = GradientColors(const [
    Color(0xFF03001e),
    Color(0xFF7303c0),
    Color(0xFFec38bc),
    Color(0xFFfdeff9),
  ]);
  static GradientColors rainbowBlue = GradientColors(const [
    Color(0xFF00F260),
    Color(0xFF0575E6),
  ]);
  static GradientColors newBlu = GradientColors(const [
    Color(0xFF396afc),
    Color(0xFF2948ff),
  ]);
  static GradientColors telegram = GradientColors(const [
    Color(0xFF1c92d2),
    Color(0xFFf2fcfe),
  ]);
  static GradientColors blueSkies = GradientColors(const [
    Color(0xFF56CCF2),
    Color(0xFF2F80ED),
  ]);
  static GradientColors coal = GradientColors(const [
    Color(0xFFEB5757),
    Color(0xFF000000),
  ]);
  static GradientColors html = GradientColors(const [
    Color(0xFFE44D26),
    Color(0xFFF16529),
  ]);
  static GradientColors pacificGreen = GradientColors(const [
    Color(0xFF34e89e),
    Color(0xFF0f3443),
  ]);
}
