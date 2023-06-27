import 'package:confwebsite2023/features/footer/ui/footer_age.dart';
import 'package:confwebsite2023/features/footer/ui/footer_contents.dart';
import 'package:confwebsite2023/features/footer/ui/footer_icon_button.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF511486),
              Color(0xFF391940),
            ],
          ),
        ),
        child: Column(
          children: [
            FooterAge(),
            FooterIcon(),
            FooterContents(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '© 2021-2023 FlutterKaigi 実行委員会',
                style: TextStyle(
                  color: Color(0xFFCCC2DC),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.50,
                ),
              ),
            ),
            Column(
              children: [
                Wrap(
                  children: [
                    Text(
                      'Flutter and the related logo are trademarks of Google LLC. '
                      'FlutterKaigi is not affiliated with or otherwise sponsored '
                      'by Google LLC.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFCCC2DC),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    Text(
                      'The "Flutter" name and the Flutter logo',
                      style: TextStyle(
                        color: Color(0xFFCCC2DC),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.50,
                      ),
                    ),
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcATop,
                      ),
                      child: FlutterLogo(size: 24),
                    ),
                    Text(
                      'are trademarks owned by Google.',
                      style: TextStyle(
                        color: Color(0xFFCCC2DC),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
