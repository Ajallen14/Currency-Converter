# Currency Converter
A minimal Flutter application that performs basic currency conversion from USD to INR. You can switch between Material and Cupertino design systems easily.

# Screenshots
**Material Design**

**Cupertino Design**


# Getting Started
**Prerequisites**
Make sure you have Flutter installed. If not, follow the instructions at:
    👉 [Flutter Install Guide](https://docs.flutter.dev/get-started/install)

# How to Run
```
git clone https://github.com/your-username/currency_converter.git
cd currency-converter
flutter pub get
flutter run
```

# Switching Between Material & Cupertino
This app supports both design systems. By default, it uses Material Design.

To switch:
1. Open main.dart
2. Change the runApp() line from:
```
runApp(const MyApp()); // Material Design
```
to
```
unApp(const MyCupertinoApp()); // Cupertino Design
```
