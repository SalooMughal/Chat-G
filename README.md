# Chat-G

> A sleek, cross-platform Flutter application that brings the power of GPT-based AI conversation to your fingertips — on mobile, web, and desktop.

---

## Overview

Chat-G is a Flutter-based chat client that interfaces with the OpenAI GPT API to deliver a fast, responsive AI chat experience. Built with GetX for clean state management and `flutter_screenutil` for adaptive layouts, it runs seamlessly on Android, iOS, Web, Windows, macOS, and Linux.

## Features

- **GPT-Powered Conversations** — Chat with an AI assistant powered by OpenAI's GPT models
- **Multi-Turn Chat** — Maintains conversation context across multiple messages
- **Clean Adaptive UI** — Responsive layout using `flutter_screenutil` for all screen sizes
- **GetX State Management** — Efficient reactive state with minimal boilerplate
- **Cross-Platform** — One codebase runs on Android, iOS, Web, Windows, macOS, and Linux
- **Conversation History** — View and continue past conversations

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter (Dart) |
| State Management | GetX |
| AI Backend | OpenAI GPT API |
| UI Utilities | flutter_screenutil, cupertino_icons |
| Platform | Android · iOS · Web · Windows · macOS · Linux |

## Project Structure

```
Chat-G/
├── android/          # Android platform files
├── ios/              # iOS platform files
├── web/              # Web platform files
├── windows/          # Windows platform files
├── macos/            # macOS platform files
├── linux/            # Linux platform files
├── lib/              # Main Dart source code
│   ├── main.dart
│   ├── bindings/     # GetX dependency bindings
│   ├── controllers/  # Chat controller (GetX)
│   ├── models/       # Message & conversation models
│   ├── views/        # Chat UI screens & widgets
│   └── services/     # OpenAI API service
├── test/             # Unit & widget tests
├── pubspec.yaml      # Flutter dependencies
└── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK `>=3.3.1 <4.0.0`
- An OpenAI API key — get one at [platform.openai.com](https://platform.openai.com)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/SalooMughal/Chat-G.git
   cd Chat-G
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Add your OpenAI API key**

   Open the API service file and replace the placeholder with your key:
   ```dart
   const String apiKey = 'YOUR_OPENAI_API_KEY';
   ```
   > **Never commit your API key to version control.** Use environment variables or a `.env` file for production.

4. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

```bash
# Android APK
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web

# Windows
flutter build windows
```

## Usage

1. Launch the app
2. Type your message in the input field at the bottom
3. Tap **Send** — the AI response appears in the chat
4. Continue the conversation or start a new chat session

## Environment Variables

| Variable | Description |
|---|---|
| `OPENAI_API_KEY` | Your OpenAI API key |
| `GPT_MODEL` | Model to use (e.g., `gpt-4o`, `gpt-3.5-turbo`) |

## Contributing

Pull requests are welcome. For major changes, please open an issue first.

## License

This project is licensed under the MIT License.
