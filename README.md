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