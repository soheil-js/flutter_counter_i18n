# 🌍 flutter_counter_i18n

A simple multilingual version of Flutter’s default counter app (English & Persian).

## 🚀 Overview

This project demonstrates how to add **internationalization (i18n)** and **localization (l10n)** support to Flutter’s default counter app.  
It includes translations for **English** and **Persian (Farsi)**.

## 🧩 Steps to Enable Localization

### 1️⃣ Add dependencies in `pubspec.yaml`

```yaml
dependencies:
  flutter_localizations:
    sdk: flutter

flutter:
  generate: true
```

### 2️⃣ Create localization files

Inside the `lib/` folder, create a new directory named `l10n/` and add the following files:

#### `lib/l10n/app_en.arb`
```json
{
  "@@locale": "en",
  "title": "Flutter Counter",
  "counterText": "You have pushed the button this many times:",
  "tooltipText": "Increment"
}
```

#### `lib/l10n/app_fa.arb`
```json
{
  "@@locale": "fa",
  "title": "شمارنده فلاتر",
  "counterText": "تعداد دفعاتی که دکمه را فشرده‌اید:",
  "tooltipText": "افزایش"
}
```

### 3️⃣ Generate localization files

Run the following command in the terminal:

```bash
flutter gen-l10n
```

This will generate the required localization helper files under `lib/l10n/`.

### 4️⃣ Update your `MaterialApp`

In your `main.dart`, modify the `MaterialApp` widget as follows:

```dart
localizationsDelegates: AppLocalizations.localizationsDelegates,
supportedLocales: AppLocalizations.supportedLocales,
locale: Locale('en'),
```

You can later switch the `locale` to `Locale('fa')` to test the Persian translation.

### 5️⃣ Use localized strings in your widgets

You can easily access your localized text anywhere in your widgets by using the following code:

```dart
final loc = AppLocalizations.of(context)!;

Text(loc.title);
Text(loc.counterText);
Text(loc.tooltipText);
```

This retrieves the localized strings defined in your `.arb` files.

## 📱 Result

After completing these steps, your app will display texts in **English** or **Persian** depending on the selected locale.
