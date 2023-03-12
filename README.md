
# Mini Test Assignment - Flutter Developer

A boilerplate project created in flutter using Bloc, Retrofit. Depend on code generation.

Some packages: 
  - [Freezed](https://pub.dev/packages/freezed)
  - [Flutter Bloc](https://pub.dev/packages/flutter_bloc)
  - [Flutter gen](https://pub.dev/packages/flutter_gen)
  - [Retrofit](https://pub.dev/packages/retrofit)
  - [Dio](https://pub.dev/packages/retrofit)
  - [Go router](https://pub.dev/packages/go_router)
  - [Dependency Injection](https://github.com/fluttercommunity/get_it)
  - [Logger](https://pub.dev/packages/logger)


## Getting Started


## How to Use 
**Step 1:**

Fork, download or clone this repo by using the link below:

```
https://github.com/dungpham259/joha-coding-challenge
```

**Step 2:**
Go to project root and execute the following command in terminal to get the required dependencies and freezed, flutter gen: 

```cmd
flutter pub get
flutter pub run intl_utils:generate
flutter pub run build_runner build --delete-conflicting-outputs
```

**Step 3:**
Go to `/packages/rest_client` and execute the following command in terminal to generate model and api client: 

```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

**Whenever change freezed file, assets, api**

Run command
```cmd
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
```

## Folder structure
```
jaho_coding_challenge/
|- lib/
  |- config/                  (flavor config)
  |- data/                    (repository)
  |- features/                (features page)
  |- injector/                (dependencies injector)
  |- router/                  (routing)
  |- services/                (app services)
|- packages/
  |- rest_client/             (api client)
|- tests/
  |- app_test/                (mock dependencies)

```
