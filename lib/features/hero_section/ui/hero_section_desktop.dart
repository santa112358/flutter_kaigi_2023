import 'package:confwebsite2023/components/flutter_kaigi_logo.dart';
import 'package:confwebsite2023/features/hero_section/ui/hero_section_twitter.dart';
import 'package:confwebsite2023/gen/assets.gen.dart';
import 'package:confwebsite2023/theme/baseline_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSectionDesktop extends StatelessWidget {
  const HeroSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    return Column(
      children: [
        const FlutterKaigiLogo(
          style: FlutterKaigiLogoStyle.markOnly,
          size: 180,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'FlutterKaigi 2023',
            style: GoogleFonts.poppins(
              color: baselineColorScheme.white,
              fontSize: 48,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@',
                style: GoogleFonts.poppins(
                  color: baselineColorScheme.white,
                  fontSize: 75,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
              Text(
                'OFFLINE',
                style: GoogleFonts.poppins(
                  color: baselineColorScheme.white,
                  fontSize: 90,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  height: 1,
                ),
              ),
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
            ),
            child: Text(
              'November 10, 2023',
              style: GoogleFonts.poppins(
                color: baselineColorScheme.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
                height: 1.5,
                letterSpacing: 0.16,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '2023年、日本国内でFlutterをメインに扱う技術カンファレンス。\n'
            'FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。',
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge!.copyWith(
              color: colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        const SizedBox(height: 24),
        HeroSectionTwitter(
          url: 'https://twitter.com/FlutterKaigi',
          backgroundColor: colorScheme.onPrimary,
          icon: Assets.icons.twitter,
          iconColor: baselineColorScheme.white,
          title: '@FlutterKaigi',
          subTitle: '最新情報を公式Twitterでチェック',
          titleTextStyle: textTheme.titleLarge!.copyWith(
            color: baselineColorScheme.white,
          ),
          subTitleTextStyle: textTheme.bodyLarge!.copyWith(
            color: baselineColorScheme.white,
          ),
          isMobile: false,
        ),
        const SizedBox(height: 20),
        HeroSectionTwitter(
          url:
              'https://twitter.com/share?hashtags=flutterkaigi&via=FlutterKaigi',
          backgroundColor: baselineColorScheme.ref.primary.primary90,
          icon: Assets.icons.twitter,
          iconColor: baselineColorScheme.ref.primary.primary40,
          title: '#flutterkaigi',
          subTitle: 'FlutterKaigi 2023をツイート',
          titleTextStyle: textTheme.titleLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary40,
          ),
          subTitleTextStyle: textTheme.bodyLarge!.copyWith(
            color: baselineColorScheme.ref.primary.primary40,
          ),
          isMobile: false,
        ),
      ],
    );
  }
}
