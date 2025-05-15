# 🏗️ Architecture Template

Project for use https://rawg.io/apidocs for mobile APP

---

## 🚀 Getting Started

To run this project, make sure you have the following tools installed:

- [FVM (Flutter Version Management)](https://fvm.app/) – for managing Flutter versions
- [Melos](https://melos.invertase.dev/) – for monorepo management

---

## 📦 Installation Steps

### 1. Install FVM

If you haven't installed FVM yet:

```bash
dart pub global activate fvm
````

Then set the required Flutter version for the project:

```bash
fvm use
```

### 2. Install Melos

Melos helps manage packages in a monorepo:

```bash
dart pub global activate melos
```

### 3. Bootstrap the Project

Install all dependencies and link local packages:

```bash
melos bootstrap
```

---

## 🧪 Run the Project

Use FVM to run the Flutter app:

```bash
fvm flutter run
```

> 💡 Make sure you're inside the correct package directory when running the app.

---

## 🛠️ Common Commands

```bash
fvm flutter pub get       # Install Flutter dependencies
melos bs           # Set up monorepo packages
melos run <command>       # Run custom Melos scripts
```

## 🎨 UI & Icons

Custom icons are used throughout the app, managed via font files.

### 🧰 Icon Setup

* **Configuration file:**
  Located at `archive/config.json`
  This file contains metadata used to generate icon fonts via [FlutterIcon](https://www.fluttericon.com/)

* **Generated font file:**
  `fonts/MyFlutterApp.ttf` – main font that includes all custom icons

* **Icon Dart class:**
  `lib/core/theme/icons/my_flutter_app_icons.dart` – defines the icon mappings for easy usage in Flutter widgets

> ✏️ To add new icons:
>
> 1. Update `archive/config.json`
> 2. Generate a new font via [fluttericon.com](https://www.fluttericon.com/)
> 3. Replace the `.ttf` file and regenerate the Dart class if needed

---



