# Giphy Search Flutter App

Flutter application for searching and displaying GIFs from Giphy API with Clean Architecture pattern.

## Flutter Version

**Flutter 3.9.2** (SDK: ^3.9.2)

## Features

- Auto search with debounce (500ms delay)
- Platform-specific UI (Material for Android, Cupertino for iOS)
- Pagination with infinite scroll
- Network connectivity handling
- Responsive UI with orientation support
- Clean Architecture
- BLoC state management
- Coordinator pattern for navigation
- Unit tests for business logic

## Architecture

### Layers

- **Domain Layer**: Business logic (Entities, UseCases, Repository interfaces)
- **Data Layer**: Data sources, Repository implementations, Models
- **Presentation Layer**: UI, BLoC, Pages, Widgets

### Key Patterns

- Clean Architecture with strict layer separation
- SOLID principles
- DRY principle
- Dependency Injection (get_it + injectable)
- Functional error handling (dartz Either)
- Immutable models (freezed + json_serializable)

## Project Structure

```
lib/
├── core/
│   ├── app_router/        # Navigation (go_router + Coordinator)
│   ├── connectivity/      # Network connectivity feature
│   ├── failure/          # Error handling
│   ├── network/          # Dio HTTP client
│   └── usecases/         # Base UseCase abstraction
├── feature/
│   └── gifs_list/
│       ├── data/         # Models, DataSources, Repositories
│       ├── domain/       # Entities, UseCases, Repository interfaces
│       └── presentation/ # BLoC, Pages, Widgets
└── main.dart
```

## Getting Started

### Prerequisites

- Flutter 3.35.5 
- Dart SDK 3.9.2 
- Giphy API key

### Setup

1. Clone the repository
2. Create `.env` file in the root directory:
   ```
   GIPHY_API_KEY_IOS=your_api_key_here
   GIPHY_API_KEY_ANDROID=your_api_key_here
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Generate code:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## Testing

Run unit tests:
```bash
flutter test
```

## Dependencies

### Core
- `flutter_bloc` - State management
- `go_router` - Navigation
- `get_it` + `injectable` - Dependency injection
- `dartz` - Functional programming (Either)
- `freezed` + `json_serializable` - Immutable models

### Network
- `dio` - HTTP client
- `connectivity_plus` - Network status
- `talker` - Logging

### UI
- `flutter_screenutil` - Responsive design
- `flutter_dotenv` - Environment variables

### Testing
- `mocktail` - Mocking for tests
