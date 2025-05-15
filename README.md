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

---

