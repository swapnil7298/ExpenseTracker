# 📱 Expense Tracker - Personal Budget Management

> **A cross-platform mobile application for personal budget management and expense tracking using Flutter.**

[![Flutter](https://img.shields.io/badge/Framework-Flutter-blue)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Language-Dart-00AED6)](https://dart.dev/)
[![Firebase](https://img.shields.io/badge/Backend-Firebase-orange)](https://firebase.google.com/)
[![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()

## 📌 Overview

**Expense Tracker** is a cross-platform mobile application built with Flutter that helps users manage personal finances by tracking expenses, categorizing transactions, and monitoring monthly spending patterns.

### Key Features:
- ✅ **Expense Logging** - Quick and easy expense entry
- ✅ **Category Management** - Organize expenses by category
- ✅ **Monthly Dashboard** - View spending summaries
- ✅ **Budget Tracking** - Set and monitor budgets
- ✅ **Cross-platform** - Works on iOS and Android
- ✅ **Data Sync** - Cloud backup via Firebase

---

## 🎯 Core Features

### 💰 Expense Management
- **Quick Add** - Log expenses in seconds
- **Category Tags** - Food, Transport, Entertainment, etc.
- **Date Tracking** - Organize by transaction date
- **Transaction Details** - Store notes and descriptions

### 📊 Analytics & Insights
- **Monthly Summary** - View total spending by month
- **Category Breakdown** - Pie charts of spending distribution
- **Trend Analysis** - See spending patterns over time
- **Spending Goals** - Set and track budget targets

### 🎨 User Experience
- **Clean Interface** - Intuitive and minimalist design
- **Fast Performance** - Smooth animations and transitions
- **Offline Support** - Use app without internet
- **Data Backup** - Automatic cloud sync

---

## 🛠️ Tech Stack

| Component | Technology |
|-----------|-----------|
| **Frontend** | Flutter, Dart |
| **Backend** | Firebase Firestore |
| **State Management** | Provider, Riverpod |
| **UI** | Material Design |
| **Database** | SQLite (local), Firebase (cloud) |

---

## 🚀 Getting Started

### Prerequisites
```bash
Flutter SDK 2.0+
Dart 2.12+
Android Studio or Xcode
```

### Installation

```bash
# Clone repository
git clone https://github.com/swapnil7298/ExpenseTracker.git
cd ExpenseTracker

# Install dependencies
flutter pub get

# Run on Android
flutter run -d android

# Run on iOS
flutter run -d ios

# Build APK
flutter build apk

# Build iOS app
flutter build ios
```

---

## 📋 Project Structure

```
ExpenseTracker/
├── lib/
│   ├── main.dart
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── add_expense_screen.dart
│   │   ├── analytics_screen.dart
│   │   └── settings_screen.dart
│   ├── models/
│   │   ├── expense.dart
│   │   └── category.dart
│   ├── services/
│   │   ├── firebaseservice.dart
│   │   └── database_service.dart
│   └── widgets/
│       ├── expense_list.dart
│       └── category_chart.dart
├── assets/
│   └── images/
├── pubspec.yaml
└── README.md
```

---

## 💻 Usage

### Add Expense
1. Tap floating action button
2. Enter amount and description
3. Select category
4. Confirm to save

### View Analytics
1. Navigate to Analytics tab
2. View pie chart of category breakdown
3. See monthly spending summary
4. Analyze trends

---

## 📧 Contact

- **GitHub**: [@swapnil7298](https://github.com/swapnil7298)
- **Email**: swapnilrao729@gmail.com

---

**Built with ❤️ by Swapnil Rao** | Smart budgeting on the go
