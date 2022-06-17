## Gradient Box

A **package** that lets you add a beautiful modifiable **Gradient Box** to your Flutter app.

&nbsp;

## Installation

1. Add the latest version of package to your pubspec.yaml (and run `dart pub get` ):

```yaml
dependencies:
  gradientbox: ^0.0.1
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:gradientbox/gradientbox.dart';
```

&nbsp;

## Getting Started

There are a number of properties that you can modify:

- onTap
- height
- width
- padding
- margin
- alignment
- borderRadius
- showShadow
- shadowColor
- gradientColors
- child

<hr>
<table>
<tr>
<td>

```dart
class GradientBoxDemoScreen extends StatelessWidget {
  const GradientBoxDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Demo 💯",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.5,
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: GradientBox(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 30),
                    height: MediaQuery.of(context).size.height * 0.25,
                    borderRadius: 15,
                    gradientColors: GradientColors.blueSkies,
                    alignment: Alignment.topLeft,
                    showShadow: true,
                    shadowColor: Colors.grey,
                    onTap: () =>
                        ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Blue Skies"))),
                    child: content),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "GradientBox",
                style: TextStyle(fontSize: 10, color: Colors.blue),
              ),
            )
          ],
        ));
  }
}
```

</td>
<td>
<img src="https://i.ibb.co/T8mGjLS/Screenshot-1655502524.png" width="100%" height="100%"  alt="demo" border="0" />
</td>
</tr>
</table>

&nbsp;

## Contributing

Gradient Box is **100% free** and **open source**. This package accepts contributions from the public &ndash; including you. There are a couple of ways in which you can contribute to the growing community of `GradientBox`.

- **Add gradient colors to the package.**

1. To add your gradient colors, fork this repository, then go to `gradient_colors.dart` file, and add a `GradientColors` variable which takes a list of colors (All the gradient colors are loaded from a single `gradient_colors.dart` file in `\lib\utils\`).

```dart
class GradientColors {

  ...

  static GradientColors flare = GradientColors(const [
    Color(0xFFf12711),
    Color(0xFFf5af19),
  ]);

}

```

2. After that add your `GradientColors` variable to the `_gradientColors` list and then submit a pull request.

```dart
class GradientColors {

  ...

  static final List<GradientColors> _gradientColors = [
    ...

    flare,
   ]
}

```

- **Fix a bug**
- **If you are a developer, feel free to check out the source and submit pull requests.**

_NOTE_ - Please keep gradient submissions and bug fixes in separate PRs.

&nbsp;

### ❤️ Found this project useful?

If you found this project useful, then please consider giving it a ⭐ on Github and sharing it with your friends.

&nbsp;

<p align="center">✌️</p>
<p align="center">
<sub><sup>A little project by <a href="https://www.instagram.com/aquib.hamid/">@aquib.hamid</a></sup></sub>
</p>
