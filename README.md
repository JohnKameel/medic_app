# 📱 Doc Doc App

Welcome to **Doc Doc App** — a modular, scalable Flutter application built with MVVM, feature-first structure, and modern tooling like `get_it`, `Dio`, and `Cubit`.

---

## 🧠 System Design

```
lib/
├── core/
│   ├── DI (get_it)
│   ├── Networking (Dio + Retrofit)
│   ├── Routing
│   ├── SharedPref
│   ├── Helpers
│   ├── Theming
│   └── Widgets
│
├── features/
│   ├── home/
│   │   ├── data/
│   │   │   ├── models
│   │   │   └── repo
│   │   │
│   │   └── presentation/
│   │       ├── view/
│   │       │   ├── screens
│   │       │   └── widgets
│   │       │
│   │       └── view_model/
│   │           └── cubit
│   │
│   ├── login/
│   ├── onboarding/
│   └── sign_up/
```

---

## 🧩 Module Breakdown

### 🔹 core/

Shared and reusable logic across the app:

* **DI**: Dependency injection setup using `get_it`
* **Networking**: API integration using `Dio` and `Retrofit`
* **Routing**: Routing using `go_router`
* **SharedPref**: Local storage with `shared_preferences` and `flutter_secure_storage`
* **Helpers**: Utility methods and extensions
* **Theming**: Theme and style management
* **Widgets**: Reusable shared widgets

### 🔹 features/

Feature-first modular structure:

* **home/**: Full-feature structure with:

  * `data/`: Models and repository
  * `presentation/`:

    * `view/`: Screens and UI widgets
    * `view_model/`: State management via `Cubit`
* **login/**, **onboarding/**, **sign\_up/**: Auth flow features following the same scalable structure as `home`

---

## 🚀 Tech Stack

* **Flutter**
* **Cubit (Bloc library)**
* **Dio + Retrofit** (network layer)
* **get\_it** (dependency injection)
* **shared\_preferences** (local storage)
* **Testing and CI setup** (FastLane - Github Actions - Firebase App Distribution)

---

## 📂 Coming Soon

* Feature modules for Profile, Settings, Appointments, and more

---

Happy coding with **Doc Doc App**! 💙
