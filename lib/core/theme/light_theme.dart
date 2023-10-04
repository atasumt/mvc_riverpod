import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_mvc/core/widget/design/const_decoration.dart';
import 'package:riverpod_mvc/core/widget/design/const_design.dart';
import 'package:riverpod_mvc/core/widget/design/const_style.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    cupertinoOverrideTheme: CupertinoThemeData(
        barBackgroundColor: Colors.white,
        primaryColor: kPrimaryColor,
        textTheme: CupertinoTextThemeData(
            dateTimePickerTextStyle: Theme.of(context).textTheme.titleMedium)),
    scaffoldBackgroundColor: kCardColor,
    textTheme: GoogleFonts.varelaRoundTextTheme(ThemeData.light().textTheme)
        .apply(
          bodyColor: Colors.grey,
          displayColor: Colors.grey,
        )
        .copyWith(
          // OK
          displayLarge: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.displayLarge,
            fontWeight: FontWeight.w600,
            fontSize: 24,
            letterSpacing: 0,
            color: kSecondaryColor,
          ),
          // OK
          titleMedium: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.titleMedium,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            letterSpacing: 0,
            color: kTextColor,
          ),
          // OK
          titleSmall: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.titleSmall,
            fontWeight: FontWeight.w500,
            fontSize: 15,
            letterSpacing: 0,
            color: kTextColor,
            decoration: TextDecoration.none,
          ),
          // OK
          bodySmall: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.bodySmall,
            fontWeight: FontWeight.w300,
            fontSize: 14,
            letterSpacing: 0,
            color: kSecondaryColor,
          ),
          // OK
          labelLarge: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.labelLarge,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            letterSpacing: 0,
            color: kCardColor,
          ),
          // OK
          labelSmall: GoogleFonts.varelaRound(
            textStyle: ThemeData.light().textTheme.labelSmall,
            fontWeight: FontWeight.w300,
            fontSize: 12,
            letterSpacing: 0,
            color: kSecondaryColor,
          ),
        ),
    scrollbarTheme: ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.resolveWith<bool?>(
        (states) => true,
      ),
    ),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return kPrimaryColor;
      }
      if (states.contains(MaterialState.disabled)) {
        return kDisabledColor;
      }
      return kSecondaryColor;
    })),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: kPrimaryColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
            side: BorderSide(
              color: kFieldColor,
            ))),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: kPrimaryColor,
    ),
    buttonBarTheme: const ButtonBarThemeData(),
    dividerTheme: DividerThemeData(
      color: kDividerColor,
      thickness: 1,
    ),
    cardColor: kCardColor,
    cardTheme: const CardTheme(
        margin: EdgeInsets.zero,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(kDefaultRadius)),
            side: BorderSide(
              color: kFieldColor,
            ))),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: kSecondaryColor)),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        showUnselectedLabels: true,
        selectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall),
    primaryColor: kPrimaryColor,
    disabledColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return kButtonDisabledColor;
          }

          return kPrimaryColor;
        },
      ),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultRadius))),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
      side: MaterialStateProperty.all(const BorderSide(
        color: kSecondaryColor,
      )),
      shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: const BorderSide(
            color: kSecondaryColor,
          ))),
    )),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(Colors.grey),
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Theme.of(context).primaryColor;
        }
        return Colors.grey;
      }),
    ),
    dialogTheme: DialogTheme(
        titleTextStyle: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: kSecondaryColor),
        contentTextStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: kSecondaryColor)),
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder: inputDecorationEnabledBorder(),
        focusedBorder: inputDecorationFocusedBorder(),
        disabledBorder: inputDecorationDisabledBorder(),
        border: inputDecorationBorder(),
        hintStyle: globalFieldHintStyle(context),
        labelStyle: globalFieldLabelStyle(context),
        iconColor: kSecondaryColor),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return kPrimaryColor;
        }
        if (states.contains(MaterialState.disabled)) {
          return kDisabledColor;
        }
        return kSecondaryColor;
      }),

      checkColor: MaterialStateProperty.all(Colors.white),
      overlayColor: MaterialStateProperty.all(kFieldColor),
      // side: BorderSide(width: 2, color: kThirdColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    iconTheme: const IconThemeData(
      color: kSecondaryColor,
    ),
    primaryIconTheme: const IconThemeData(
      color: kSecondaryColor,
    ),
  );
}
