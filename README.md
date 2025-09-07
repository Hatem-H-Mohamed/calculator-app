# Calculator App

A simple and functional **Calculator application** built with Flutter.  
This app provides a clean user interface to perform basic arithmetic operations quickly and efficiently.

## Features

*   **Basic Operations:** Perform addition, subtraction, multiplication, and division.
*   **Clear Functionality:** Easily reset calculations with a clear button.
*   **Responsive UI:** Works smoothly across Android and iOS devices.
*   **Real-Time Results:** Instant calculation updates as you input numbers.
*   **Custom UI:** A modern and minimal design for a pleasant user experience.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine.  
For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/Hatem-H-Mohamed/calculator-app.git
    ```
2.  **Navigate to the project directory:**
    ```sh
    cd calculator-app
    ```
3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```
4.  **Run the application:**
    ```sh
    flutter run
    ```

## Project Structure
The core application logic is located in the `lib/` directory.

```
lib/
├── core/
│ └── theme/
│ └── app_colors.dart # Defines the application's color palette
├── screens/
│ └── home_screen.dart # Main calculator screen with UI and logic
├── widgets/
│ └── custom_button.dart # Reusable button widget for calculator keys
└── main.dart # The entry point of the application
```

*   **`main.dart`**: The entry point for the Flutter application.  
*   **`core/`**: Contains shared application code, such as theme colors.  
*   **`screens/`**: Holds the main calculator screen with UI and logic.  
*   **`widgets/`**: Contains reusable UI components like calculator buttons. 



