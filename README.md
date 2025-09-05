
# 📚 Dictionary App - Flutter Mobile Application

[![Flutter](https://img.shields.io/badge/Flutter-2.5%2B-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-2.14%2B-blue?logo=dart)](https://dart.dev)
[![Go Router](https://img.shields.io/badge/Go_Router-16.0.0-orange)](https://pub.dev/packages/go_router)
[![Riverpod](https://img.shields.io/badge/Riverpod-2.6.1-green)](https://pub.dev/packages/flutter_riverpod)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)


---

## 🔍 Overview

**Dictionary App** is a modern, user-friendly mobile application built with **Flutter** that provides an intuitive experience for searching and bookmarking dictionary definitions. The app features clean UI design, smooth navigation, dark/light mode support, and a responsive layout optimized for both mobile and tablet devices.

This project demonstrates advanced Flutter development practices including **state management with Riverpod**, **navigation with GoRouter**, and **modular architecture** for scalable code organization.

---

## ✨ Key Features

### 🔎 Search Functionality
- Real-time search input with clear visual feedback
- Clean, minimal search bar integrated into the header
- Supports full-text word lookup with immediate results display

### 📌 Bookmark System
- Save favorite words or definitions for quick access
- Persistent storage of bookmarks per user
- Visual bookmark icon indicator in search results

### 🌓 Dark & Light Mode
- Toggle between themes via switch in the app bar
- Automatic theme persistence using `ThemeManager`
- Smooth transition between modes without page reload

### 🧭 Intuitive Navigation
- **GoRouter** powered navigation system
- Deep linking support with dynamic parameters
- Seamless transitions between pages (Home, Sign In, Sign Up, Bookmarks)

### 💡 User Experience Enhancements
- Responsive layout with proper padding and spacing
- Customizable color scheme and typography
- Drawer menu for easy access to settings and home
- Accessible UI elements with proper contrast and tap targets

---

## 🛠️ Technology Stack

| Component | Technology | Purpose |
|---------|------------|--------|
| **Framework** | Flutter 3.0+ | Cross-platform UI development |
| **State Management** | Riverpod 2.6.1 | Efficient, scalable state handling |
| **Navigation** | GoRouter 16.0.0 | Declarative routing with path parameters |
| **UI Design** | Material Design | Consistent, modern interface |
| **Backend** | HTTP Client | Future integration with dictionary API |
| **Themes** | Custom Theme Manager | Dynamic light/dark mode switching |

---

## 🖼️ App Screenshots

### 🔐 Sign In Screen
<img src="https://github.com/user-attachments/assets/869dcf51-0e0c-4d90-8c59-455cdf559751" alt="Sign In Screen" width="300">
*Secure login interface with email/password authentication*

### 📝 Sign Up Screen
<img src="https://github.com/user-attachments/assets/990506e4-989c-45c1-9377-eee4d7884397" alt="Sign Up Screen" width="300">
*User registration with password confirmation*

### 🔍 Home Page
<img src="https://github.com/user-attachments/assets/3f7f36e9-eed6-4862-b9b1-30f7a33b0c04" alt="Dictionary App Home Screen" width="300">

*Main search interface with definition preview and bookmark options*

### 📚 Bookmarks Page
<img src="https://github.com/user-attachments/assets/71ce95e8-b737-4154-8186-df2721c4f5c1" alt="Home Page" width="300">
*Personalized list of saved words with custom icons and metadata*

---

## 🚀 Architecture Highlights

### Modular Structure
```
lib/
├── main.dart                     # App entry point
├── services/
│   └── routes/                   # Route configuration
├── views/
│   ├── homepage/                 # Main screen with search
│   ├── bookmark/                 # Bookmark management
│   ├── account/                  # Authentication screens
│   └── ...
├── riverpod/                     # State providers
└── themes/                       # Color schemes and styles
```

### Navigation System
- **GoRouter** enables declarative route definition
- Path parameters (`:userId`) support personalized content
- Smooth page transitions with `MaterialPage` builders
- Back stack management and deep linking capabilities

### State Management
- **Riverpod** provides dependency injection and scoped state
- Centralized theme management across the app
- Provider-based data flow for consistent updates

---

## 🔄 Development Workflow

1. **Setup**
```bash
flutter pub get
```

2. **Run App**
```bash
flutter run
```

3. **Test on Devices**
- Android: `flutter run -d <device_id>`
- iOS: `flutter run -d <simulator_name>`

4. **Build Release**
```bash
flutter build apk --release
```

---
## This project is created by:
** Faizan Ali
``` faizanali49
```
