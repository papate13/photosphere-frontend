# photosphere_frontend

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```
lib/
├── main.dart                 # App entry point
├── app/
│   ├── app.dart              # MaterialApp configuration
│   └── router.dart           # Navigation/routing setup
├── config/
│   ├── app_config.dart       # Environment variables & config
│   └── theme.dart            # App theming
├── core/
│   ├── constants/            # App-wide constants
│   ├── errors/               # Error handling
│   ├── utils/                # Utility functions
│   └── widgets/              # Reusable widgets
├── data/
│   ├── models/               # Data models
│   │   ├── panorama.dart
│   │   ├── user_profile.dart
│   │   ├── comment.dart
│   │   └── message.dart
│   ├── repositories/         # Repository implementations
│   │   ├── auth_repository.dart
│   │   ├── panorama_repository.dart
│   │   ├── user_repository.dart
│   │   └── messaging_repository.dart
│   └── services/             # API and service clients
│       ├── api_service.dart  # Base API client
│       ├── auth_service.dart # Firebase Auth wrapper
│       ├── storage_service.dart
│       ├── notification_service.dart
│       └── ar_service.dart   # AR camera integration
├── domain/
│   ├── repositories/         # Repository interfaces
│   └── usecases/             # Business logic
├── features/
│   ├── auth/                 # Authentication feature
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── bloc/
│   ├── capture/              # AR photo capture feature
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── bloc/
│   ├── view_panorama/        # 360° panorama viewing
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── bloc/
│   ├── feed/                 # Photo feed feature
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── bloc/
│   ├── profile/              # User profile feature
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── bloc/
│   └── messaging/            # Chat messaging feature
│       ├── screens/
│       ├── widgets/
│       └── bloc/
└── main_development.dart     # Development entry point (optional)

```